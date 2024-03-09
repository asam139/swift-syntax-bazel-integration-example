load("@build_bazel_rules_swift//swift:swift.bzl", "swift_binary", "swift_library", "swift_test")
load("@build_bazel_rules_swift//swift:swift_compiler_plugin.bzl", "swift_compiler_plugin", "universal_swift_compiler_plugin")

licenses(["notice"])

config_setting(
    name = "supports_macros",
    values = {"define": "supports_macros=1"},
)

swift_library(
    name = "Macros",
    srcs = glob(["Macros/*.swift"]),
    module_name = "Macros",
    plugins = [":MacrosPlugin"],
    visibility = ["//visibility:public"],
)

swift_library(
    name = "MacrosUniversal",
    srcs = glob(["Macros/*.swift"]),
    module_name = "MacrosUniversal",
    plugins = [":MacrosUniversal"],
)

swift_compiler_plugin(
    name = "MacrosPlugin",
    srcs = glob(["MacrosPlugin/*.swift"]),
    module_name = "MacrosPlugin",
    deps = [
        "@SwiftSyntax",
        "@SwiftSyntax//:SwiftCompilerPlugin",
        "@SwiftSyntax//:SwiftSyntaxBuilder",
        "@SwiftSyntax//:SwiftSyntaxMacros",
    ],
)

universal_swift_compiler_plugin(
    name = "MacrosPluginUniversal",
    plugin = ":MacrosPlugin",
)

swift_test(
    name = "MacrosPluginTests",
    srcs = glob(["MacrosPluginTests/*.swift"]),
    deps = [
        ":MacrosPlugin",
        "@SwiftSyntax",
        "@SwiftSyntax//:SwiftSyntaxBuilder",
        "@SwiftSyntax//:SwiftSyntaxMacros",
    ],
)
