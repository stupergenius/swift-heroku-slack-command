// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SlackJokeCommand",
    products: [
        .executable(name: "SlackJokeCommand", targets: ["SlackJokeCommand"]),
    ],
    dependencies: [
        .package(url: "http://github.com/kylef/Curassow", .exact("0.6.1")),
    ],
    targets: [
        .target(name: "SlackJokeCommand", dependencies: ["Curassow"], path: "Sources")
    ]
)
