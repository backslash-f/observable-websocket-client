// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftTraderWebSocket",
    products: [
        .library(
            name: "SwiftTraderWebSocket",
            targets: ["SwiftTraderWebSocket"]
        )
    ],
    targets: [
        .target(name: "SwiftTraderWebSocket"),
        .testTarget(
            name: "SwiftTraderWebSocketTests",
            dependencies: ["SwiftTraderWebSocket"]
        )
    ]
)
