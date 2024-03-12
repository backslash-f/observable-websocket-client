//
//  ObservableWebSocketClient.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

/// Establishes a WebSocket connection using the given `websocketURL`.
/// Publishes received messages and errors.
@Observable public final class ObservableWebSocketClient: Identifiable, Codable, Equatable {

    /// Publishes received messages after the connection is successfully established.
    public var message: CodableWebSocketMessage?

    /// Publishes any error that may occur.
    public var error: ObservableWebSocketClientError?

    public var id: UUID

    public let websocketURL: URL

    private let service: ObservableWebSocketService

    /// Creates an `ObservableWebSocketClient` instance.
    ///
    /// - Parameters:
    ///   - websocketURL: The WebSocket `URL` to connect to, starting with `wss`.
    ///   E.g., `wss://endpoint.com`
    public convenience init(websocketURL: URL) {
        self.init(websocketURL: websocketURL,
                  message: nil,
                  error: nil)
    }

    public init(id: UUID = .init(),
                websocketURL: URL,
                message: CodableWebSocketMessage? = nil,
                error: ObservableWebSocketClientError? = nil) {
        self.id = id
        self.websocketURL = websocketURL
        self.message = message
        self.error = error
        self.service = ObservableWebSocketService(url: websocketURL)
    }
}
