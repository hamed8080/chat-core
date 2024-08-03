// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let useLocaldependency = true

let local: [Package.Dependency] = [
    .package(path: "../Async"),
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
]

let remote: [Package.Dependency] = [
    .package(url: "https://pubgi.sandpod.ir/chat/ios/async", from: "2.1.0"),
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
]

let package = Package(
    name: "ChatCore",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10),
        .macOS(.v12),
        .macCatalyst(.v13),
    ],
    products: [
        .library(
            name: "ChatCore",
            targets: ["ChatCore"]),
    ],
    dependencies: useLocaldependency ? local : remote,
    targets: [
        .target(
            name: "ChatCore",
            dependencies: [
                .productItem(name: "Async", package: useLocaldependency ? "Async" : "async"),
            ]
        ),
        .testTarget(
            name: "ChatCoreTests",
            dependencies: [
                "ChatCore",
                .productItem(name: "Async", package: useLocaldependency ? "Async" : "async"),
            ],
            resources: []
        ),
    ]
)
