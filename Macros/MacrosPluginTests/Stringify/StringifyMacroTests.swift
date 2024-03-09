import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import MacrosPlugin
import XCTest

class StringifyMacroTests: XCTestCase {
  func testStringify() {
    let sourceFile: SourceFileSyntax = #"""
      _ = #stringify(1 + 2)
      """#
    let context = BasicMacroExpansionContext(
      sourceFiles: [sourceFile: .init(moduleName: "TestModule", fullFilePath: "Test.swift")]
    )
    let transformedSourceFile =
      sourceFile.expand(macros: ["stringify": StringifyMacro.self], in: context)
    XCTAssertEqual(
      String(describing: transformedSourceFile),
      #"""
      _ = (1 + 2, "1 + 2")
      """#
    )
  }
}
