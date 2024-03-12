//
//  CodableWebSocketMessage.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

/// Defines a `Codable` wrapper for `URLSessionWebSocketTask.Message`.
public struct CodableWebSocketMessage: Codable {
    public let message: URLSessionWebSocketTask.Message

    init(message: URLSessionWebSocketTask.Message) {
        self.message = message
    }
}
