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
