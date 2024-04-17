//
//  ObservableWebSocketClient+Codable.swift
//
//
//  Created by Fernando Fernandes on 06.03.24.
//

import Foundation

/// Required for encoding/decoding an observable object class. Refer to:
/// https://www.hackingwithswift.com/books/ios-swiftui/encoding-an-observableobject-class
extension ObservableWebSocketClient {
    public enum CodingKeys: String, CodingKey {
        case id
        case websocketURL
        case message
        case error
    }

    // MARK: - Encode

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(websocketURL, forKey: .websocketURL)
        try container.encodeIfPresent(codableMessage, forKey: .message)
        try container.encodeIfPresent(error, forKey: .error)
    }

    // MARK: - Decode

    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let id = try container.decode(UUID.self, forKey: .id)
        let websocketURL = try container.decode(URL.self, forKey: .websocketURL)
        let message = try container.decodeIfPresent(CodableWebSocketMessage.self, forKey: .message)
        let error = try container.decodeIfPresent(ObservableWebSocketClientError.self, forKey: .error)
        self.init(id: id, websocketURL: websocketURL, message: message, error: error)
    }
}
