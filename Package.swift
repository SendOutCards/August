// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "August",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "August", targets: ["August"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SendOutCards/ConvertibleArchiver.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/SendOutCards/AssociatedValues.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(name: "August", dependencies: ["ConvertibleArchiver", "AssociatedValues"]),
        .testTarget(name: "AugustTests", dependencies: ["August"]),
    ]
)
