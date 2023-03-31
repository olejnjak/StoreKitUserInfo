// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "StoreKitUserInfo",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "StoreKitUserInfo", targets: ["StoreKitUserInfo"]),
    ],
    targets: [
        .target(name: "StoreKitUserInfo")
    ]
)
