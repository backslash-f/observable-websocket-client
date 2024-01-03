//
//  SwiftTraderWebSocketError+Equatable.swift
//
//
//  Created by Fernando Fernandes on 03.01.24.
//

import Foundation

extension SwiftTraderWebSocketError: Equatable {
    public static func == (lhs: SwiftTraderWebSocketError,
                           rhs: SwiftTraderWebSocketError) -> Bool {
        switch (lhs, rhs) {
        case (.invalidWebSocketURL(let rhsURLString),
              .invalidWebSocketURL(let lhsURLString)):
            return rhsURLString == lhsURLString
        }
    }
}
