//
//  ObservableWebSocketClient+Equatable.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

extension ObservableWebSocketClient: Equatable {
    public static func == (lhs: ObservableWebSocketClient,
                           rhs: ObservableWebSocketClient) -> Bool {
        lhs.websocketURL == rhs.websocketURL &&
        lhs.message == rhs.message
    }
}
