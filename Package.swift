import PackageDescription

let package = Package(
    name: "quickSaleManager",
    targets: [
        Target(name: "quickSaleManager"),
        Target(name: "App", dependencies: [.Target(name: "quickSaleManager")])
    ],
    dependencies:[
        .Package(url: "https://github.com/IBM-Swift/Kitura", majorVersion: 1, minor: 4),
        .Package(url: "https://github.com/IBM-Swift/Kitura-Request", majorVersion: 0, minor: 5),
        .Package(url: "https://github.com/IBM-Swift/Kitura-redis", majorVersion: 1, minor: 4),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger", majorVersion: 1, minor: 4),
        ]
)
