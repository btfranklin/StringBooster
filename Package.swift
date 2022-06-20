// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StringBooster",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "StringBooster",
            targets: ["StringBooster"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "StringBooster",
            dependencies: []),
        .testTarget(
            name: "StringBoosterTests",
            dependencies: ["StringBooster"]),
    ]
)
