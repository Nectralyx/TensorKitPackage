// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorKitPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TensorKitPackage",
            targets: ["TensorKitPackage", "TensorKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "TensorKit", url: "https://synapse.x10.mx/TensorKitFramework.xcframework.zip", checksum: "4492dc9c11437d7f5af4752485914ec2d709486a2ae6539e59485a0cde656cd1"),
        .target(
            name: "TensorKitPackage"),
        .testTarget(
            name: "TensorKitPackageTests",
            dependencies: ["TensorKitPackage"]),
    ]
)
