//
//  ObservableWebSocketClient+Equatable.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

extension ObservableWebSocketClient {
    public static func == (lhs: ObservableWebSocketClient,
                           rhs: ObservableWebSocketClient) -> Bool {
        lhs.id == rhs.id &&
        lhs.websocketURL == rhs.websocketURL &&
        lhs.isConnected == rhs.isConnected &&
        lhs.codableMessage == rhs.codableMessage &&
        lhs.codableError == rhs.codableError
    }
}
