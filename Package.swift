// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MBProgressHUD-JDragon",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MBProgressHUD-JDragon",
            targets: ["MBProgressHUD-JDragon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MBProgressHUD-JDragon",
            dependencies: ["MBProgressHUD"],
            path: "MBProgressHUD+JDragon",
            exclude: [],
            sources: nil,
            resources: [
                .process("MBProgressHUD+JDragon.bundle")
            ],
            publicHeadersPath: "."
        )
    ]
)
