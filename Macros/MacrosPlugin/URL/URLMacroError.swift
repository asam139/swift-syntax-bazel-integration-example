//
//  URLMacroError.swift
//  MacrosPlugin
//
//  Created by Saúl Abril on 9/3/24.
//

enum URLMacroError: Error, CustomStringConvertible {
    case requiresStaticStringLiteral
    case malformedURL(urlString: String)
    
    var description: String {
        switch self {
        case .requiresStaticStringLiteral:
            return "#URL requires a static string literal"
        case .malformedURL(let urlString):
            return "The input URL is malformed: \(urlString)"
        }
    }
}
