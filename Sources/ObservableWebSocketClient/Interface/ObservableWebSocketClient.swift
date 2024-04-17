//
//  ObservableWebSocketClient.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Combine
import Foundation

/// Establishes a WebSocket connection using the given `websocketURL`.
/// Publishes received messages and errors.
public final class ObservableWebSocketClient: Identifiable, Equatable, Codable, ObservableObject {

    /// Publishes received messages after the connection is successfully established.
    @Published public var codableMessage: CodableWebSocketMessage?

    /// Publishes any error that may occur.
    @Published public var error: ObservableWebSocketClientError?

    /// Publishes whether the WebSocket is still valid/alive.
    @Published public var isConnected: Bool = false

    public var id: UUID

    public let websocketURL: URL

    private(set) var service: ObservableWebSocketService

    var cancellables = Set<AnyCancellable>()

    // MARK: - Lifecycle

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
        self.codableMessage = message
        self.error = error
        self.service = ObservableWebSocketService(url: websocketURL)
        observeWebSocketConnection()
    }
}
