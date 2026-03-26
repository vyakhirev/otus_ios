// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "core",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "core",
            targets: ["core"]
        ),
    ],
    dependencies: [
        .package(path: "../KinopoiskApi")
    ],
    targets: [
        .target(
            name: "core",
            dependencies: [
                .product(name: "OpenAPIClient", package: "KinopoiskApi")
            ]
        ),
    ]
)
