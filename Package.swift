// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WebPKit",
    platforms: [
        .iOS(.v16),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "WebPKit",
            targets: ["WebPKit"]
        ),
    ],
    dependencies: [
        // Provides the libwebp XCFrameworks for Apple platforms
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "WebPKit",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode")
            ],
            path: "WebPKit",
            exclude: [
                "Supporting"
            ]
        )
    ]
)


