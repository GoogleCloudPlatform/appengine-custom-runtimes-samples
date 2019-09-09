// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "MyApplication",
  dependencies: [
    .package(url: "https://github.com/IBM-Swift/Kitura.git",
      .upToNextMajor(from: "2.0.0"))
  ],
  targets: [
    .target(name: "MyApplication",
      dependencies: ["Kitura"],
      path: "Sources")
  ]
)
