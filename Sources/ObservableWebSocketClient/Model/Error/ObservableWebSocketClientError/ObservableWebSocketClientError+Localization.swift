//
//  ObservableWebSocketClientError+Localization.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

extension ObservableWebSocketClientError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .decodingMessage:
            "There was an error while decoding a URLSessionWebSocketTask.Message."
        case .encodingMessage:
            "There was an error while encoding a URLSessionWebSocketTask.Message."
        case .receivingMessage:
            "There was an error while receiving a URLSessionWebSocketTask.Message."
        }
    }
}
