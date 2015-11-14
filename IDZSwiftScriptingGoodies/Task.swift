//
//  Task.swift
//  IDZSwiftScriptingGoodies
//
//  Created by idz on 11/14/15.
//  Copyright © 2015 iOS Developer Zone. All rights reserved.
//

import Foundation

/**
    Runs a shell command, capturing the exit status, standard output and standard error.
    This is synchronous function.

    - parameter command: the shell command, e.g. `/bin/ls -l`
    - returns: a tuple containing the exit status, standard output and standard error.
*/
public func runShellCommand(command: String) -> (Int, String?, String?) {
    let args: [String] = command.characters.split { $0 == " " }.map(String.init)
    let other = args[1..<args.count]
    let outputPipe = NSPipe()
    let errorPipe = NSPipe()
    let task = NSTask()
    task.launchPath = args[0]
    task.arguments = other.map { $0 }
    task.standardOutput = outputPipe
    task.standardError = errorPipe
    task.launch()
    task.waitUntilExit()
    
    let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
    let outputString = String(data:outputData, encoding: NSUTF8StringEncoding)
    
    let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()
    let errorString = String(data:errorData, encoding: NSUTF8StringEncoding)
    
    return (Int(task.terminationStatus), outputString, errorString)
}
