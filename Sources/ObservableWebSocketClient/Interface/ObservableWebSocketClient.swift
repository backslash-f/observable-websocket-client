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
    @Published public var codableMessage: CodableWebSocketMessage? = nil

    /// Publishes any error that may occur.
    @Published public var error: ObservableWebSocketClientError? = nil

#warning("TODO: isConnected logic")
    /// Publishes whether the WebSocket is still valid/alive.
    @Published public var isConnected: Bool = false

    public var id: UUID

    public let websocketURL: URL

    private let service: ObservableWebSocketService

    private var cancellables = Set<AnyCancellable>()

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

// MARK: - Observation

extension ObservableWebSocketClient {
    func observeWebSocketConnection() {

        // MARK: Message

        service.$message.sink { [weak self] message in
            if let message {
                self?.codableMessage = CodableWebSocketMessage(message: message)
            }
        }
        .store(in: &cancellables)

        // MARK: Error

        service.$error.sink { [weak self] error in
            if let error {
                self?.error = error
            }
        }
        .store(in: &cancellables)
    }
}
