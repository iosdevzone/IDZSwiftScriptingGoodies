//
//  File.swift
//  IDZSwiftScriptingGoodies
//
//  Created by idz on 11/14/15.
//  Copyright © 2015 iOS Developer Zone. All rights reserved.
//

import Foundation

/**
    Tests if a file or directory exists at a given path

    - parameter filePath: the file path
    - returns: true if a file exist at `path`
*/
public func fileExists(filePath: String) -> Bool {
    return NSFileManager.defaultManager().fileExistsAtPath(filePath)
}

/**
    Creates a directory (and any needed intermediates) at a path.

    - parameter path: the path of the directory to be created
    - returns: true if successful, false otherwise.

*/
public func mkdir(path: String) -> Bool {
    do {
        try NSFileManager.defaultManager().createDirectoryAtPath(path, withIntermediateDirectories: true, attributes: nil)
        return true
    }
    catch {
        return false
    }
}
