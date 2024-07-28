// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: 'SCATest',
    dependencies: [
        .package(url: 'https://github.com/Alamofire/Alamofire.git', from: '5.4.0'),
        .package(url: 'https://github.com/SwiftyJSON/SwiftyJSON.git', from: '5.0.0'),
        .package(url: 'https://github.com/Quick/Quick.git', from: '3.1.2'),
        .package(url: 'https://github.com/realm/realm-cocoa.git', from: '10.7.6'),
        .package(url: 'https://github.com/krzyzanowskim/CryptoSwift.git', from: '1.4.2'),
    ],
    targets: [
        .target(
            name: 'SCATest',
            dependencies: ['Alamofire', 'SwiftyJSON', 'CryptoSwift', .product(name: 'RealmSwift', package: 'realm-cocoa')]),
        .testTarget(
            name: 'SCATestTests',
            dependencies: ['SCATest', 'Quick']),
    ]
)
