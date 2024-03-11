//
//  WebSocketService.swift
//
//
//  Created by Fernando Fernandes on 02.01.24.
//

import Foundation

@Observable public final class WebSocketService {
    public var session = URLSession(configuration: .default)

    public var message: URLSessionWebSocketTask.Message?

    public var error: SwiftTraderWebSocketError?

    private let websocketURL: URL

    private var webSocketTask: URLSessionWebSocketTask?

    public init(url: URL) {
        self.websocketURL = url
        initializeWebSocket()
        receiveMessage()
    }
}

// MARK: - Private

private extension WebSocketService {

    func receiveMessage() {
        webSocketTask?.receive { result in
            switch result {
            case .success(let message):
                self.message = message
                // Listen for the next message.
                self.receiveMessage()

            case .failure(let error):
                let codableError = CodableError(error)
                self.error = .receivingMessage(codableError)
            }
        }
    }
}

// MARK: - Private

private extension WebSocketService {
    func initializeWebSocket() {
        webSocketTask = session.webSocketTask(with: websocketURL)
        webSocketTask?.resume()
    }
}
