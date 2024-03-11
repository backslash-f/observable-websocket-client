//
//  WebSocketClient+Equatable.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

extension WebSocketClient: Equatable {
    public static func == (lhs: WebSocketClient, rhs: WebSocketClient) -> Bool {
        lhs.websocketURL == rhs.websocketURL &&
        lhs.message == rhs.message
    }
}
