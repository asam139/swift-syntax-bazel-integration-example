load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load(
  "@build_bazel_rules_apple//apple:ios.bzl",
  "ios_application",
  "ios_unit_test",
)
load("@build_bazel_rules_apple//apple:apple.bzl", "local_provisioning_profile")
load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

xcodeproj(
    name = "xcodeproj",
    project_name = "App",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(":App", target_environments = ["simulator"]),
        ":Tests",
    ],
)

ios_application(
    name = "App",
    bundle_id = "com.example.macrosapp",
    families = ["iphone", "ipad"],
    infoplists = [":Resources/Info.plist"],
    minimum_os_version = "15.0",
    visibility = ["//visibility:public"],
    deps = [":Lib"],
)

swift_library(
    name = "Lib",
    srcs = glob(["Sources/*.swift"]),
)

ios_unit_test(
    name = "Tests",
    bundle_id = "com.example.tests",
    minimum_os_version = "15.0",
    test_host = ":App",
    visibility = ["//visibility:public"],
    deps = [":TestLib"],
)

swift_library(
    name = "TestLib",
    srcs = glob(["Tests/*.swift"]),
)