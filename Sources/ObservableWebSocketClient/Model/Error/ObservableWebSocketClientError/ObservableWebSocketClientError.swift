//
//  ObservableWebSocketClientError.swift
//
//
//  Created by Fernando Fernandes on 03.01.24.
//

import Foundation

public enum ObservableWebSocketClientError: Error, Equatable, Codable {
    case decodingMessage(CodableError)
    case encodingMessage(CodableError)
    case receivingMessage(CodableError)
}
