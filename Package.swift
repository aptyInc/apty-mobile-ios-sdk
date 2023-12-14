// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.1.9"
let moduleName = "AptyClient"
let checksum = "6727e411510f1e0ce51bfb4fe9247ac1185138af8d014e894d1b86bca403b79a"
let url = "https://github.com/aptyInc/apty-mobile-ios-sdk/releases/download/\(version)/AptyClient.xcframework.zip"

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
