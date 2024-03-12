//
//  CodableError.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

public struct CodableError: Error, Codable, Equatable {
    public let errorType: String
    public let message: String

    public init(_ error: Error, message: String? = nil) {
        self.errorType = String(reflecting: type(of: error))
        self.message = message ?? error.localizedDescription
    }
}
