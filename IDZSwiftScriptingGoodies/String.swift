//
//  String.swift
//  IDZSwiftScriptingGoodies
//
//  Created by idz on 11/13/15.
//  Copyright © 2015 iOS Developer Zone. All rights reserved.
//

import Foundation

public extension String {
    /**
        Trims trailing whitespace and newlines.

        - returns: the trimmed string.
    */
    public func trim() -> String {
        return ((self as NSString).stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) as String)
    }
}

public extension String {
    public func CSI(code: String) -> String { return "\u{001b}[" + code }
    public var black: String { return CSI("30m") + self + CSI("0m") }
    public var red: String { return CSI("31m") + self + CSI("0m") }
    public var green: String { return CSI("32m") + self + CSI("0m") }
    public var yellow: String { return CSI("33m") + self + CSI("0m") }
    public var blue: String { return CSI("34m") + self + CSI("0m") }
    public var magenta: String { return CSI("35m") + self + CSI("0m") }
    public var cyan: String { return CSI("36m") + self + CSI("0m") }
    public var white: String { return CSI("37m") + self + CSI("0m") }
}
