//
//  ObservableWebSocketClient.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

/// Establishes a WebSocket connection using the given `websocketURL`.
/// Publishes received messages and errors.
@Observable public final class ObservableWebSocketClient: Identifiable {

    /// The WebSocket URL to connect to, starting with `wss`.
    ///
    /// E.g., `wss://endpoint.com`
    public let websocketURL: URL

    /// Publishes received messages after the connection is successfully established.
    public var message: CodableWebSocketMessage?

    /// Publishes any error that may occur.
    public var error: ObservableWebSocketClientError?

    public init(websocketURL: URL,
                message: CodableWebSocketMessage? = nil,
                error: ObservableWebSocketClientError? = nil) {
        self.websocketURL = websocketURL
        self.message = message
        self.error = error
    }
}
