// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PterodactylObjects",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PterodactylClientObjects",
            targets: ["PterodactylClientObjects"]
        ),
        .library(
            name: "PterodactylCRUD",
            targets: ["PterodactylCRUD"]
        ),
        .library(name: "PterodactylApplicationObjects", targets: ["PterodactylApplicationObjects"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PterodactylClientObjects"
        ),
        .target(name: "PterodactylCRUD", dependencies: ["PterodactylClientObjects", "PterodactylApplicationObjects"]),
        .target(name: "PterodactylApplicationObjects"),
        .testTarget(
            name: "PterodactylClientObjectsTests",
            dependencies: ["PterodactylClientObjects"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
