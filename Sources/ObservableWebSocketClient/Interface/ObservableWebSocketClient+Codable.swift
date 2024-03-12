//
//  ObservableWebSocketClient+Codable.swift
//
//
//  Created by Fernando Fernandes on 06.03.24.
//

import Foundation

/// Required for encoding/decoding an observable object class. Refer to:
/// https://www.hackingwithswift.com/books/ios-swiftui/encoding-an-observableobject-class
extension ObservableWebSocketClient: Codable {
    public enum CodingKeys: String, CodingKey {
        case websocketURL
        case message
        case error
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(websocketURL, forKey: .websocketURL)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(error, forKey: .error)
    }

    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let websocketURL = try container.decode(URL.self, forKey: .websocketURL)
        let message = try container.decodeIfPresent(CodableWebSocketMessage.self, forKey: .message)
        let error = try container.decodeIfPresent(ObservableWebSocketClientError.self, forKey: .error)
        self.init(websocketURL: websocketURL, message: message, error: error)
    }
}
