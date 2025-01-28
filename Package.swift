// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XCStringsGenProPlugin",
    products: [
        .plugin(name: "XCStringsGenProPlugin", targets: ["XCStringsGenProPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsGenProPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "XCStringsGen")
            ]
        ),
        .binaryTarget(
            name: "XCStringsGen",
            url: "https://github.com/nonasim/XCStringsGenPlugin/releases/download/1.0.0/XCStringsGen.zip",
            checksum: "bbee4f0df666eabb9af863fc33aec5987f95f61bbe4e15a50ec81af72c57ab24"
        )
    ]
)
