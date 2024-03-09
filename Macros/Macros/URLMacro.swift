//
//  URLMacro.swift
//  Macros
//
//  Created by Saúl Abril on 9/3/24.
//

import Foundation

@freestanding(expression)
public macro URL(_ string: String) -> URL = #externalMacro(module: "MacrosPlugin", type: "URLMacro")
