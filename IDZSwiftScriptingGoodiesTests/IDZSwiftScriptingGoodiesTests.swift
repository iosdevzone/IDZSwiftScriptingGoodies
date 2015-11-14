//
//  IDZSwiftScriptingGoodiesTests.swift
//  IDZSwiftScriptingGoodiesTests
//
//  Created by idz on 11/13/15.
//  Copyright © 2015 iOS Developer Zone. All rights reserved.
//

import XCTest
import IDZSwiftScriptingGoodies

class IDZSwiftScriptingGoodiesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTrim() {
        let input = "abc\n\n"
        let expect = "abc"
        let output = input.trim()
        XCTAssertEqual(output, expect)
    }
    
}