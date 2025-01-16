// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonInterface_ios",
    
    products: [

        .library(
            name: "CommonInterface_ios",
            targets: ["CommonInterface_ios"]),
    ],
    dependencies : [
        .package(name:"SwiftyJSON",url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.2")),
        
        .package(name:"IPAPI",url: "https://github.com/arturgrigor/IPAPI.git",.upToNextMajor(from: "3.0"))

        
    ],
    targets: [
      
        .target(
            name: "CommonInterface_ios",
            dependencies: ["SwiftyJSON","IPAPI"]
        )

    ]
    
)
