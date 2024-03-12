//
//  CodableWebSocketMessage+Codable.swift
//  
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

public extension CodableWebSocketMessage {
    enum CodingKeys: String, CodingKey {
        case messageType
        case messageData
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let messageType = try container.decode(String.self, forKey: .messageType)

        switch messageType {
        case "string":
            let messageData = try container.decode(String.self, forKey: .messageData)
            message = .string(messageData)
        case "data":
            let messageData = try container.decode(Data.self, forKey: .messageData)
            message = .data(messageData)
        default:
            throw ObservableWebSocketClientError.decodingMessage
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch message {
        case .string(let messageData):
            try container.encode("string", forKey: .messageType)
            try container.encode(messageData, forKey: .messageData)
        case .data(let messageData):
            try container.encode("data", forKey: .messageType)
            try container.encode(messageData, forKey: .messageData)
        @unknown default:
            throw ObservableWebSocketClientError.encodingMessage
        }
    }
}
