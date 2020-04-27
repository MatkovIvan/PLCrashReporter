// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PLCrashReporter",
    products: [
        .library(name: "CrashReporter", targets: ["CrashReporter"])
    ],
    targets: [
        .target(
            name: "CrashReporter",
            path: "",
            exclude: ["*Tests.m*"],
            sources: [
                "Source",
                "Dependencies"
            ],
            cSettings: [
                .define("PLCR_PRIVATE"),
                .define("PLCF_RELEASE_BUILD"),
                .unsafeFlags(["-f", "no-objc-arc"])
            ],
            cxxSettings:[
                .unsafeFlags(["-f", "no-exceptions"])
             ],
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        )
    ]
)
