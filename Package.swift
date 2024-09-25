// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FFmpegWrapper",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "FFmpegWrapper",
            targets: ["FFmpegWrapper"]
        )
    ],
    dependencies: [
        // FFmpeg is not directly available via Swift Package Manager.
        // You may need to handle this dependency manually or find a suitable package.
        // .package(url: "https://github.com/FFmpeg/FFmpeg.git", from: "2.2.0"),
    ],
    targets: [
        .target(
            name: "FFmpegWrapper",
            dependencies: [
                // "FFmpeg"
            ],
            path: "FFmpegWrapper",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
