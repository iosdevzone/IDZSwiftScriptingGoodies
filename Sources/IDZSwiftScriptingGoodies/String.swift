//
//  String.swift
//  IDZSwiftScriptingGoodies
//
//  Created by idz on 11/13/15.
//  Copyright © 2015 iOS Developer Zone. All rights reserved.
//

import Foundation

/**
 Calculates the replative path from a base path to a traget path.
 -parameter path: the target path.
 -parameter relativeTo: the basePath
 - returns: the relative path.
 */
public func path(path: String, relativeTo basePath: String) -> String? {
    let pathComponents = (path as NSString).pathComponents
    let basePathComponents = (basePath as NSString).pathComponents
    let nCommon = zip(pathComponents, basePathComponents).reduce(0) { c,t in return (t.0 == t.1) ? c + 1 : c }
    let components = Array<String>(repeating: "..", count: basePathComponents.count - nCommon) + pathComponents[nCommon..<pathComponents.count]
    return NSString.path(withComponents: components)
}

public extension String {
    /**
        Trims trailing whitespace and newlines.

        - returns: the trimmed string.
    */
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    /**
     Splits a string into components delimited by a specific character
     - parameter c: the delimiter character.
     - returns: the string components.
     */
    func split(c: Character) -> [String] {
        return self.split { $0 == c }.map(String.init)
    }
}

public extension String {
    func CSI(_ code: String) -> String { return "\u{001b}[" + code }
    var black: String { return CSI("30m") + self + CSI("0m") }
    var red: String { return CSI("31m") + self + CSI("0m") }
    var green: String { return CSI("32m") + self + CSI("0m") }
    var yellow: String { return CSI("33m") + self + CSI("0m") }
    var blue: String { return CSI("34m") + self + CSI("0m") }
    var magenta: String { return CSI("35m") + self + CSI("0m") }
    var cyan: String { return CSI("36m") + self + CSI("0m") }
    var white: String { return CSI("37m") + self + CSI("0m") }
}
