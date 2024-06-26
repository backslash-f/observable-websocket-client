// swift-tools-version: 5.10

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
    dependencies: [
        .package(url: "https://github.com/backslash-f/toolbox.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ObservableWebSocketClient",
            dependencies: [
                .product(name: "Toolbox", package: "toolbox")
            ]
        ),
        .testTarget(
            name: "ObservableWebSocketClientTests",
            dependencies: ["ObservableWebSocketClient"]
        )
    ]
)
