// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultiAdsInterface",
    platforms: [
           .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
       ],
    products: [
        .library(
            name: "MultiAdsInterface",
            targets: ["MultiAdsInterface"]),
    ],
    dependencies : [
        .package(name:"SwiftyJSON",url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.2")),
        
        .package(name:"IPAPI",url: "https://github.com/arturgrigor/IPAPI.git",.upToNextMajor(from: "3.0"))

        
    ],
    targets: [
        .target(
            name: "MultiAdsInterface",
            dependencies: ["SwiftyJSON","IPAPI"],
            path: "Sources"
        )

    ]
    
)
