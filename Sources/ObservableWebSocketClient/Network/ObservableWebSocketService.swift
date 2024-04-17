//
//  ObservableWebSocketService.swift
//
//
//  Created by Fernando Fernandes on 02.01.24.
//

import Foundation

public final class ObservableWebSocketService: ObservableObject {

    @Published public var message: URLSessionWebSocketTask.Message?

    @Published public var error: ObservableWebSocketClientError?

    public var session = URLSession(configuration: .default)

    private let websocketURL: URL

    private var webSocketTask: URLSessionWebSocketTask?
    
    // MARK: - Lifecycle

    public init(url: URL) {
        self.websocketURL = url
        initializeWebSocket()
        receiveMessage()
    }
}

// MARK: - Interface

public extension ObservableWebSocketService {
    
    func send(message: String) {
        let wsMessage = URLSessionWebSocketTask.Message.string(message)
        webSocketTask?.send(wsMessage) { error in
            if let error {
                Task { @MainActor in
                    let codableError = CodableError(error)
                    self.error = .sendingMessage(codableError)
                }
            }
        }
    }
}

// MARK: - Private

private extension ObservableWebSocketService {

    func initializeWebSocket() {
        webSocketTask = session.webSocketTask(with: websocketURL)
        webSocketTask?.resume()
    }

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
