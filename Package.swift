// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Anchorage",
    products: [
        .library(name: "Anchorage", targets: ["Anchorage"]),
        .library(name: "Anchorage_CLI", targets: ["Anchorage_CLI"]),
        .executable(name: "anchor", targets: ["Anchor"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Anchor",
            dependencies: ["Anchorage_CLI"]
        ),
        .target(
            name: "Anchorage_CLI",
            dependencies: ["Anchorage", "Utility"]),
        .target(
            name: "Anchorage",
            dependencies: []),
        .testTarget(
            name: "AnchorageTests",
            dependencies: ["Anchorage"]),
        .testTarget(
            name: "Anchorage_CLITests",
            dependencies: ["Anchorage_CLI"]),
        .testTarget(
          name: "AnchorTests",
          dependencies: ["Anchor"]),
    ]
)
