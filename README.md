[![swift-version](https://img.shields.io/badge/swift-5.10-ea7a50.svg?logo=swift)](https://github.com/apple/swift)
[![swift-package-manager](https://img.shields.io/badge/package%20manager-compatible-d5b561.svg?logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNjJweCIgaGVpZ2h0PSI0OXB4IiB2aWV3Qm94PSIwIDAgNjIgNDkiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDYzLjEgKDkyNDUyKSAtIGh0dHBzOi8vc2tldGNoLmNvbSAtLT4KICAgIDx0aXRsZT5Hcm91cDwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxnIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSJHcm91cCIgZmlsbC1ydWxlPSJub256ZXJvIj4KICAgICAgICAgICAgPHBvbHlnb24gaWQ9IlBhdGgiIGZpbGw9IiNEQkI1NTEiIHBvaW50cz0iNTEuMzEwMzQ0OCAwIDEwLjY4OTY1NTIgMCAwIDEzLjUxNzI0MTQgMCA0OSA2MiA0OSA2MiAxMy41MTcyNDE0Ij48L3BvbHlnb24+CiAgICAgICAgICAgIDxwb2x5Z29uIGlkPSJQYXRoIiBmaWxsPSIjRjdFM0FGIiBwb2ludHM9IjI3IDI1IDMxIDI1IDM1IDI1IDM3IDI1IDM3IDE0IDI1IDE0IDI1IDI1Ij48L3BvbHlnb24+CiAgICAgICAgICAgIDxwb2x5Z29uIGlkPSJQYXRoIiBmaWxsPSIjRUZDNzVFIiBwb2ludHM9IjEwLjY4OTY1NTIgMCAwIDE0IDYyIDE0IDUxLjMxMDM0NDggMCI+PC9wb2x5Z29uPgogICAgICAgICAgICA8cG9seWdvbiBpZD0iUmVjdGFuZ2xlIiBmaWxsPSIjRjdFM0FGIiBwb2ludHM9IjI3IDAgMzUgMCAzNyAxNCAyNSAxNCI+PC9wb2x5Z29uPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+)](https://github.com/apple/swift-package-manager)
[![platforms](https://img.shields.io/badge/platforms-iOS%2017+%20%7C%20macOS%2014+%20-lightgrey.svg?logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNDE2cHgiIGhlaWdodD0iNTEycHgiIHZpZXdCb3g9IjAgMCA0MTYgNTEyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA2My4xICg5MjQ1MikgLSBodHRwczovL3NrZXRjaC5jb20gLS0+CiAgICA8dGl0bGU+R3JvdXA8L3RpdGxlPgogICAgPGRlc2M+Q3JlYXRlZCB3aXRoIFNrZXRjaC48L2Rlc2M+CiAgICA8ZyBpZD0iUGFnZS0xIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0iR3JvdXAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAuMTE3NzEwLCAtMC4wMDAzNzUpIiBmaWxsPSIjRDZENkQ4IiBmaWxsLXJ1bGU9Im5vbnplcm8iPgogICAgICAgICAgICA8cGF0aCBkPSJNMjg0LjEyNDI5LDgxLjEyNzM3NDUgQzMwMC40MzIyOSw2MS40MTYzNzQ1IDMxMS44OTMyOSwzNC42NDUzNzQ1IDMxMS4zMTgyOSw3LjM3NzM3NDUxIEMzMTEuMjIxMjksMi43OTgzNzQ1MSAzMDcuMDQ0MjksLTAuNjAxNjI1NDkyIDMwMi41MTYyOSwwLjA4OTM3NDUwODQgQzI3OC41ODkyOSwzLjc0NTM3NDUxIDI1MS44NDIyOSwxOC43MzAzNzQ1IDIzNS4yODYyOSwzOC4xMTMzNzQ1IEMyMjAuMDI3MjksNTUuNzU2Mzc0NSAyMDYuNDg1MjksODMuMTc0Mzc0NSAyMDcuNTAzMjksMTEwLjM0MzM3NSBDMjA3LjY1NjI5LDExNC40MzczNzUgMjExLjExNTI5LDExNy43MDAzNzUgMjE1LjIxMDI5LDExNy41ODQzNzUgQzI0MS42MTkyOSwxMTYuODM3Mzc1IDI2Ny42OTIyOSwxMDEuMDIzMzc1IDI4NC4xMjQyOSw4MS4xMjczNzQ1IiBpZD0iUGF0aCI+PC9wYXRoPgogICAgICAgICAgICA8cGF0aCBkPSJNNDExLjU4NjI5LDM3Mi43MDQzNzUgQzM5NS4wMDcyOSwzNjQuMzU3Mzc1IDM0OS4yNTMyOSwzMzUuNTUyMzc1IDM0OC42ODcyOSwyNzEuNjcwMzc1IEMzNDguMjAzMjksMjE5LjM3NzM3NSAzODIuOTAzMjksMTg4Ljk3MDM3NSAzOTcuNjY0MjksMTc4LjM1MzM3NSBDNDAxLjE2ODI5LDE3NS44MzIzNzUgNDAxLjkzODI5LDE3MC44OTkzNzUgMzk5LjI3NDI5LDE2Ny41MDIzNzUgQzM4Ny4wMDkyOSwxNTEuODY3Mzc1IDM3Mi42NjgyOSwxNDEuODM4Mzc1IDM1OC44OTIyOSwxMzUuMzM3Mzc1IEMzNTguOTAwMjksMTM1LjMzNjM3NSAzNTguOTEwMjksMTM1LjMzNDM3NSAzNTguOTE4MjksMTM1LjMzMzM3NSBDMzU3LjEzNDI5LDEzNC40OTAzNzUgMzU0LjA3OTI5LDEzMy4xNTIzNzUgMzUxLjYzNDI5LDEzMi4xODkzNzUgTDM1MS42MzQyOSwxMzIuMTg5Mzc1IEMyODIuMzE0MjksMTA0LjkwMjM3NSAyMzguNjI4MjksMTQ2LjcyNzM3NSAyMTIuMTY1MjksMTQ2LjcyNzM3NSBDMTkxLjkwNDI5LDE0Ni43MjczNzUgMTYwLjYzOTI5LDEyMy44MzQzNzUgMTI3LjUxMzI5LDEyNC40NTkzNzUgQzgzLjk4NDI4OTgsMTI1LjA5MTM3NSA0My44OTAyODk4LDE0OS43ODEzNzUgMjEuNDQzMjg5OCwxODguNzQxMzc1IEMtMTIuOTk0NzEwMiwyNDguNTE1Mzc1IC0xLjYzNzcxMDI1LDMzMC4yMjczNzUgMjUuMTkzMjg5OCwzOTMuOTA5Mzc1IEMyNS4xOTMyODk4LDM5My45MTAzNzUgMjUuMTkyMjg5OCwzOTMuOTEwMzc1IDI1LjE5MjI4OTgsMzkzLjkxMTM3NSBDMjUuODc5Mjg5OCwzOTUuNTQwMzc1IDI2Ljk3MzI4OTgsMzk4LjA3NTM3NSAyNy44ODUyODk4LDQwMC4xMjIzNzUgQzI3Ljg4NjI4OTgsNDAwLjEyMDM3NSAyNy44ODYyODk4LDQwMC4xMTkzNzUgMjcuODg3Mjg5OCw0MDAuMTE3Mzc1IEMzNS42NjAyODk4LDQxNy41NzMzNzUgNDQuNTU5Mjg5OCw0MzMuNTI1Mzc1IDUzLjkzNDI4OTgsNDQ3LjA4NTM3NSBDNzUuNDYxMjg5OCw0NzguMjAwMzc1IDEwMS4xNDIyOSw1MTMuMjUyMzc1IDEzNC44ODUyOSw1MTEuOTY0Mzc1IEMxNjcuMzYyMjksNTEwLjY3NjM3NSAxNzkuNjQwMjksNDkwLjk2NjM3NSAyMTguODg4MjksNDkwLjk2NjM3NSBDMjU4LjExMTI5LDQ5MC45NjYzNzUgMjY5LjE3NTI5LDUxMS45NjQzNzUgMzAzLjUxNTI5LDUxMS4zMzkzNzUgQzMzOC40NzIyOSw1MTAuNjc2Mzc1IDM2MC42MDgyOSw0NzkuNTg2Mzc1IDM4MS45ODgyOSw0NDguMzIzMzc1IEM0MDAuODA1MjksNDIwLjg1MzM3NSA0MTEuMTg2MjksMzk0LjA0MTM3NSA0MTUuMzQ2MjksMzgxLjk3MDM3NSBDNDE2LjU4NjI5LDM3OC4zNzIzNzUgNDE0Ljk4NzI5LDM3NC40MTYzNzUgNDExLjU4NjI5LDM3Mi43MDQzNzUgWiIgaWQ9IlBhdGgiPjwvcGF0aD4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg==)](https://en.wikipedia.org/wiki/List_of_Apple_operating_systems)
[![build-status](https://github.com/backslash-f/observable-websocket-client/actions/workflows/swift.yml/badge.svg?branch=main)](https://github.com/backslash-f/observable-websocket-client/actions)
[![license](https://img.shields.io/badge/license-MIT-67ac5b.svg?logo=data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMi4wMDkgNTEyLjAwOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyLjAwOSA1MTIuMDA5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzRDQUY1MDsiIGQ9Ik0yNTUuOTQ0LDE1LjkzQzExNC42MTgsMTUuOTAyLDAuMDI4LDEzMC40NDYsMCwyNzEuNzcyQy0wLjAxOCwzNjQuMDg5LDQ5LjY4OSw0NDkuMjYsMTMwLjA3Nyw0OTQuNjUgIGMyLjQ1NiwxLjQxNSw1LjM4LDEuNzc3LDguMTA3LDEuMDAzYzIuNzA4LTAuNzU2LDUuMDA4LTIuNTUsNi40LTQuOTkybDc4LjkzMy0xMzkuNDk5YzIuODk1LTUuMTI2LDEuMDkxLTExLjYyOC00LjAzMi0xNC41MjggIGMtMzUuOTU0LTIwLjE5NC00OC43My02NS43MTItMjguNTM1LTEwMS42NjZzNjUuNzEyLTQ4LjczLDEwMS42NjYtMjguNTM1czQ4LjczLDY1LjcxMiwyOC41MzUsMTAxLjY2NiAgYy02LjcxMiwxMS45NTEtMTYuNTg1LDIxLjgyMy0yOC41MzUsMjguNTM1Yy01LjEyMywyLjktNi45MjcsOS40MDItNC4wMzIsMTQuNTI4bDc4LjcyLDEzOS40OTljMS4zODgsMi40NSwzLjY4OSw0LjI1Myw2LjQsNS4wMTMgIGMwLjkyOSwwLjI2OSwxLjg5MSwwLjQwNiwyLjg1OSwwLjQwNWMxLjg0LTAuMDAyLDMuNjQ4LTAuNDgsNS4yNDgtMS4zODdjMTIzLjA4Ny02OS40NDQsMTY2LjU3My0yMjUuNTIyLDk3LjEyOS0zNDguNjEgIEM0MzMuNTQ4LDY1LjYyOSwzNDguMzE5LDE1Ljg4NCwyNTUuOTQ0LDE1LjkzeiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K)](https://en.wikipedia.org/wiki/MIT_License)


# ObservableWebSocketClient ⚡
A Swift package that establishes [WebSocket connections](https://en.wikipedia.org/wiki/WebSocket) and publishes received messages and errors from an [Observable Object](https://developer.apple.com/documentation/combine/observableobject).

## Usage

### Initialization

```swift
let websocketURL = URL(string: "wss://websocket-endpoint.com")!
let wsClient = ObservableWebSocketClient(websocketURL: websocketURL)

/*
 A `URLSessionWebSocketTask` is created and resumed just after the
 client initialization. Nothing else is required at this point.
 */
```

### Observation

#### Connection

```swift
wsClient
    .$isConnected
    .sink { isConnected in
        print("isConnected: \(isConnected)")
    }
    .store(in: &cancellables)
```

#### Messages

```swift
wsClient
    .$codableMessage
    .compactMap{ $0 }
    .sink { codableMessage in
        print("Message: \(codableMessage.messageAsString())")
        // codableMessage.message returns the original `URLSessionWebSocketTask.Message`
    }
    .store(in: &cancellables)
```

#### Errors

```swift
wsClient
    .$codableError
    .compactMap{ $0 }
    .sink { codableError in
        print("Error: \(codableError.description)")
    }
    .store(in: &cancellables)
```

### Ping/Pong 🏓

#### Ping Message
Passing in a `pingTimerInterval` during the client initialization will cause a timer to continuously send the given `pingMessage` to the WS server, keeping the connection alive:

```swift
let websocketURL = URL(string: "wss://endpoint.com")!
let wsClient = ObservableWebSocketClient(
    websocketURL: websocketURL,
    pingTimerInterval: 18, // Every 18 seconds
    pingMessage: "{\"type\": \"ping\"}" // The format is defined by the WS server
)
```

#### Ping Message with Generated ID
To generate a unique ID for the ping-type message, use the closure in `pingMessageWithGenerateId`. The closure takes a `String` (the generated unique ID), returns a modified version of the message incorporating the ID, and sends it to the WS server. As in the above, these steps are repeated continuously using the interval indicated in the `pingTimerInterval`, generating unique IDs each time to keep the connection alive:

```swift
let websocketURL = URL(string: "wss://endpoint.com")!
let wsClient = ObservableWebSocketClient(
    websocketURL: websocketURL,
    pingTimerInterval: 18, // Every 18 seconds
    pingMessageWithGeneratedId: { generatedId in
        "{\"id\": \"\(generatedId)\", \"type\": \"ping\"}"  // The format is defined by the WS server
    }
)
```

### Sending messages
After the client is initialized and a connection is established, messages can be sent via the `ObservableWebSocketClient.sendMessage(_:)` API:

```swift
wsClient.sendMessage("A String WebSocket message")
```

## Demo
In this demo app, the `ObservableWebSocketClient` connects to a [Kucoin WebSocket server](https://www.kucoin.com/docs/websocket/introduction) and sends `ping` messages every `pingTimerInterval` to keep the connection alive. The server responds with `welcome` and `pong` messages:

https://github.com/backslash-f/observable-websocket-client/assets/664951/2c8897e4-6d25-413b-9f12-d61b32ebbf0d

## Integration
### Xcode
Use Xcode's [built-in support for SPM](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

*or...*

### Package.swift
In your `Package.swift`, add `ObservableWebSocketClient` as a dependency:

```swift
dependencies: [
  .package(
  	url: "https://github.com/backslash-f/observable-websocket-client",
  	from: "1.0.0"
  )
]
```

Associate the dependency with your target:

```swift
targets: [
  .target(
    name: "YourAppName",
    dependencies: [
      .product(
      	name: "ObservableWebSocketClient",
      	package: "observable-websocket-client"
      )
    ]
  )
]
```

Run: `swift build`

