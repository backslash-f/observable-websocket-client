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

    private var pingTimer: Timer?
    private let pingTimerInterval: TimeInterval?
    private let pingMessage: String?
    private let pingMessageWithGeneratedId: ((String) -> String)?

    private(set) var service: ObservableWebSocketService

    var cancellables = Set<AnyCancellable>()

    // MARK: - Lifecycle

    /// Creates an `ObservableWebSocketClient` instance.
    ///
    /// - Parameters:
    ///   - id: Optional unique ID of the instance. If absent, an instance of `UUID` will be used instead.
    ///   - websocketURL: The WebSocket `URL` to connect to, starting with `wss`.
    ///   For example:
    ///      ```
    ///      wss://endpoint.com
    ///      ```
    ///   - message: Optional `CodableWebSocketMessage`. Useful for mocking the instance's state.
    ///   - error: Optional `ObservableWebSocketClientError`. Useful for mocking the instance's state.
    ///   - pingTimerInterval: The value passed in (`TimeInterval`) will cause a timer to
    ///   continuously send ping-type messages to the WS server, keeping the connection alive.
    ///   - pingMessage: The ping-type `String` message.
    ///   For example:
    ///       ```
    ///       "{\"id\": \"\(myId)\", \"type\": \"ping\"}"
    ///       ```
    ///   - pingMessageWithGeneratedId: The ping-type `String` message, including
    ///   a dynamically generated ID. The closure (`(String) -> String`) takes a `String`
    ///   (the generated ID) and returns a modified message string incorporating that ID.
    ///   Notice that if `pingMessage` is also passed in, `pingMessage` will be used instead
    ///   (causing `pingMessageWithGeneratedId` to be ignored). Usage Example:
    ///       ```
    ///       webSocketClient = .init(
    ///         websocketURL: someWebSocketURL,
    ///         pingTimerInterval: 18,
    ///         pingMessageWithGeneratedId: { generatedId in
    ///           "{\"id\": \"\(generatedId)\", \"type\": \"ping\"}"
    ///         }
    ///       )
    ///       // The above will send the WS server (every 18 seconds)
    ///       // a message like this:
    ///       // {"id": "some-random-uuid", "type": "ping"}
    ///       ```
    public init(id: UUID = .init(),
                websocketURL: URL,
                message: CodableWebSocketMessage? = nil,
                error: ObservableWebSocketClientError? = nil,
                pingTimerInterval: TimeInterval? = nil,
                pingMessage: String? = nil,
                pingMessageWithGeneratedId: ((String) -> String)? = nil) {
        self.id = id
        self.websocketURL = websocketURL
        self.codableMessage = message
        self.error = error
        self.pingTimerInterval = pingTimerInterval
        self.pingMessage = pingMessage
        self.pingMessageWithGeneratedId = pingMessageWithGeneratedId
        self.service = ObservableWebSocketService(url: websocketURL)

        observeWebSocketConnection()
        startPingTimer()
    }

    deinit {
        pingTimer?.invalidate()
    }
}

// MARK: - Private

private extension ObservableWebSocketClient {
    func startPingTimer() {
        if let pingTimerInterval,
           pingMessage?.isEmpty == false || pingMessageWithGeneratedId != nil {
            pingTimer = Timer.scheduledTimer(
                withTimeInterval: pingTimerInterval, repeats: true) { [weak self] _ in
                    if let message = self?.pingMessage {
                        self?.sendMessage(message)
                    } else if let messageWithGeneratedId = self?.pingMessageWithGeneratedId {
                        self?.sendMessageWithGeneratedId(messageWithGeneratedId)
                    }
                }
        }
    }
}
