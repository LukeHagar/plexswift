// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Plexswift",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Plexswift",
            targets: ["Plexswift"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Plexswift",
            dependencies: []
        )
  ]
)
