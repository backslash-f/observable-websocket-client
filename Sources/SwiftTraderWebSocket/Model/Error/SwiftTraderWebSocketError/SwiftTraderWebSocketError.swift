//
//  SwiftTraderWebSocketError.swift
//
//
//  Created by Fernando Fernandes on 03.01.24.
//

import Foundation

public enum SwiftTraderWebSocketError: Error, Equatable, Codable {
    case decodingMessage
    case encodingMessage
    case receivingMessage(CodableError)
}
