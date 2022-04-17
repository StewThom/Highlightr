// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Highlightr",
    platforms: [
        .macOS(.v11),
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Highlightr",
            targets: ["Highlightr"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Highlightr",
            dependencies: [],
            path: "Highlightr",
            exclude: [
                "Assets/Highlighter/LICENSE",
            ],
            sources: [
                "Classes",
            ],
            resources: [
                .copy("Assets/Highlighter/highlight.min.js"),
                .copy("Assets/styles/")
            ]
        ),
    ]
)
