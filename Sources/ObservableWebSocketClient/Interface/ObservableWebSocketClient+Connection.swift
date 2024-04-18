//
//  ObservableWebSocketClient+Connection.swift
//  
//
//  Created by Fernando Fernandes on 18.04.24.
//

import Foundation

public extension ObservableWebSocketClient {

    /// Sends a close frame with an optional close reason.
    ///
    /// - Parameter closeCode: A `URLSessionWebSocketTask.CloseCode`
    /// that indicates the reason for closing the connection. The default is `.normalClosure`.
    /// - Parameter reason: Optional further information to explain the closing.
    /// The value of this parameter is defined by the endpoints, not by the standard.
    func closeConnection(with closeCode: URLSessionWebSocketTask.CloseCode = .normalClosure,
                         reason: String? = nil) {
        service.close(reason: reason)
    }
}
