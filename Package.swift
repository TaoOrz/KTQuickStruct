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
            url:"https://firebasestorage.googleapis.com/v0/b/autotoll-407b9.appspot.com/o/AULibrary.xcframework.zip?alt=media&token=d6ea3650-40b8-42f0-ba12-f154e70ec69b",
            checksum: "f1b413ec71f08e1de16909277e77383031ceb41de79f37282b8df57e288df87d"
        ),
        .target(name: "AULibraryManager",dependencies: ["SnapKit","Kingfisher"])
    ]
)
