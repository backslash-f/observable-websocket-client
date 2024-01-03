//
//  WebSocketService.swift
//
//
//  Created by Fernando Fernandes on 02.01.24.
//

import Foundation

#warning("TODO: Observable, propagate received messages")
public class WebSocketService {
    public var session: URLSession = .init(configuration: .default)

    private let urlString: String
    private let token: String
    private let clientId: String

    private var webSocketTask: URLSessionWebSocketTask?

    public init(urlString: String,
                token: String,
                clientId: String) throws {
        self.urlString = urlString
        self.token = token
        self.clientId = clientId

        try initializeWebSocket()
        receiveMessage()
    }
}

// MARK: - Interface

public extension WebSocketService {

    #warning("TODO: handle received messages as models, throw errors?")
    func receiveMessage() {
        webSocketTask?.receive { result in
            switch result {
            case .success(let message):
                switch message {
                case .string(let text):
                    print("Received string: \(text)")
                case .data(let data):
                    print("Received data: \(data)")
                @unknown default:
                    fatalError()
                }
                
                // Listen for the next message.
                self.receiveMessage()

            case .failure(let error):
                print("Error in receiving message: \(error)")
            }
        }
    }
}

// MARK: - Private

private extension WebSocketService {
    func initializeWebSocket() throws {
        let webSocketURL = try createWebSocketURL()
        webSocketTask = session.webSocketTask(with: webSocketURL)
        webSocketTask?.resume()
    }

    #warning("TODO: remove this logic from here, this should be done previously")
    func createWebSocketURL() throws -> URL {
        let fullURL = "\(urlString)?token=\(token)&connectId=\(clientId)"
        guard let url = URL(string: fullURL) else {
            throw SwiftTraderWebSocketError.invalidWebSocketURL(urlString: fullURL)
        }
        return url
    }
}
