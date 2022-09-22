// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Chat-SDK",
    platforms: [.macOS (.v10_13) , .iOS (.v11), .tvOS (.v11), .watchOS (.v4) ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Chat-SDK",
            targets: ["Chat-SDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kamrankhan07/SignalR-Swift", from: "2.2.8")
    ],
    targets: [
        .target(
            name: "Chat-SDK",
            dependencies: [
                .product(name: "SignalRSwift", package: "SignalR-Swift")
            ])
    ]
)

