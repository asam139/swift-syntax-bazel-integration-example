load("@build_bazel_rules_swift//swift:swift.bzl", "swift_binary", "swift_library", "swift_test")
load("@build_bazel_rules_swift//swift:swift_compiler_plugin.bzl", "swift_compiler_plugin", "universal_swift_compiler_plugin")


licenses(["notice"])

config_setting(
    name = "supports_macros",
    values = {"define": "supports_macros=1"},
)

swift_library(
    name = "Stringify",
    srcs = ["Stringify.swift"],
    module_name = "Stringify",
    plugins = [":StringifyMacro"],
)

swift_library(
    name = "StringifyUniversal",
    srcs = ["Stringify.swift"],
    module_name = "StringifyUniversal",
    plugins = [":StringifyMacroUniversal"],
)

swift_compiler_plugin(
    name = "StringifyMacro",
    srcs = [
        "StringifyMacro.swift",
        "StringifyMacroPlugin.swift",
    ],
    module_name = "StringifyMacroPlugin",
    deps = [
        "@SwiftSyntax",
        "@SwiftSyntax//:SwiftCompilerPlugin",
        "@SwiftSyntax//:SwiftSyntaxBuilder",
        "@SwiftSyntax//:SwiftSyntaxMacros",
    ],
)

universal_swift_compiler_plugin(
    name = "StringifyMacroUniversal",
    plugin = ":StringifyMacro",
)

swift_binary(
    name = "StringifyClient",
    srcs = ["StringifyClient.swift"],
    deps = [":Stringify"],
)

swift_binary(
    name = "StringifyUniversalClient",
    srcs = ["StringifyUniversalClient.swift"],
    deps = [":StringifyUniversal"],
)

swift_test(
    name = "StringifyMacroTest",
    srcs = ["StringifyMacroTests.swift"],
    deps = [
        ":StringifyMacro",
        "@SwiftSyntax",
        "@SwiftSyntax//:SwiftSyntaxBuilder",
        "@SwiftSyntax//:SwiftSyntaxMacros",
    ],
)
