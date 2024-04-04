// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "StoreKitUserInfo",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "StoreKitUserInfo", targets: ["StoreKitUserInfo"]),
    ],
    targets: [
        .target(
            name: "StoreKitUserInfo",
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
