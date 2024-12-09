// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AULibrary",
    platforms: [.iOS(.v14),.macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "AULibrary", targets: ["AULibrary"]),
        .library(name: "AULibraryManager", targets: ["AULibraryManager"])
    ],
    dependencies: [
            // 在此列出你的依赖项
        .package(
          url: "https://github.com/SnapKit/SnapKit",
          "5.0.1" ..< "5.7.1"
        ),
        .package(
          url: "https://github.com/onevcat/Kingfisher",
          "8.0.0" ..< "8.1.1"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "AULibrary",
          path: "./Sources/AULibrary.xcframework"),
        .target(name: "AULibraryManager",dependencies: ["SnapKit","Kingfisher"])
    ],
    version: "1.0.0"
)
