//
//  CodableError.swift
//
//
//  Created by Fernando Fernandes on 28.02.24.
//

import Foundation

/// Defines a `Codable` wrapper for `Error`.
public struct CodableError: Error, Codable, Equatable {
    public let errorType: String
    public let description: String
    public let localizedDescription: String
    public let domain: String
    public let code: Int

    public init(_ error: Error) {
        self.errorType = String(reflecting: type(of: error))
        self.description = (error as NSError).description
        self.localizedDescription = (error as NSError).localizedDescription
        self.domain = (error as NSError).domain
        self.code = (error as NSError).code
    }

    internal init(errorType: String,
                  description: String,
                  localizedDescription: String,
                  domain: String,
                  code: Int) {
        self.errorType = errorType
        self.description = description
        self.localizedDescription = localizedDescription
        self.domain = domain
        self.code = code
    }
}
