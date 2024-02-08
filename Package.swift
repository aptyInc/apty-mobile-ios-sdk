// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.2.1"
let moduleName = "AptyStudio"
let checksum = "69902c252086436f4f63205495c6695df9abd01f77b61696c63f6155126c45fe"
let url = "https://github.com/aptyInc/apty-mobile-studio-ios-sdk-publisher/blob/main/AptyStudio-\(version).xcframework.zip"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: moduleName, targets: [moduleName])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/mobillium/MobilliumQRCodeReader.git", from: "1.0.0"),
        .package(url: "https://github.com/socketio/socket.io-client-swift", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        //.target(name: "\(moduleName)-Main", dependencies: ["MobilliumQRCodeReader", "Socket.IO-Client-Swift"], path: "\(moduleName)-Main"),
        .binaryTarget(name: "\(moduleName)", url: url, checksum: checksum)
    ]
)
