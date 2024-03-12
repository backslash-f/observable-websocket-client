// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ObservableWebSocketClient",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "ObservableWebSocketClient",
            targets: ["ObservableWebSocketClient"]
        )
    ],
    targets: [
        .target(name: "ObservableWebSocketClient"),
        .testTarget(
            name: "ObservableWebSocketClientTests",
            dependencies: ["ObservableWebSocketClient"]
        )
    ]
)
