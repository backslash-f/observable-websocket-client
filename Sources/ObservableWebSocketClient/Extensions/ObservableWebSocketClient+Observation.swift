//
//  ObservableWebSocketClient+Observation.swift
//
//
//  Created by Fernando Fernandes on 17.04.24.
//

import Foundation

extension ObservableWebSocketClient {

    func observeWebSocketConnection() {

        // MARK: Messages

        service.$message.sink { [weak self] message in
            if let message {
                self?.isConnected = true
                self?.codableMessage = CodableWebSocketMessage(message: message)
            }
        }
        .store(in: &cancellables)

        // MARK: Errors

        service.$error.sink { [weak self] error in
            if let error {
                self?.isConnected = false
                self?.error = error
            }
        }
        .store(in: &cancellables)
    }
}
