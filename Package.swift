// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MBProgressHUD-JDragon",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "MBProgressHUD-JDragon",
            targets: ["MBProgressHUD-JDragon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0")),
    ],
    targets: [
        .target(
            name: "MBProgressHUD-JDragon",
            dependencies: ["MBProgressHUD"],
            path: "MBProgressHUD+JDragon",
            exclude: [],
            sources: nil,
            publicHeadersPath: ".",
            resources: [                 
                .process("MBProgressHUD+JDragon.bundle")
            ]
        )
    ]
)
