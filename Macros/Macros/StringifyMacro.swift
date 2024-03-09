//
//  StringifyMacro.swift
//  Macros
//
//  Created by Saúl Abril on 9/3/24.
//

@freestanding(expression)
public macro Stringify<T>(_ value: T) -> (value: T, text: String) =
  #externalMacro(module: "MacrosPlugin", type: "StringifyMacro")
