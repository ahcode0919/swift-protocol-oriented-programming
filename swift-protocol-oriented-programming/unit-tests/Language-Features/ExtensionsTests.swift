//
//  ExtensionsTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class ExtensionsTests: XCTestCase {
    func testDouble() {
        XCTAssertEqual(5.double(), 10)
        
        let largeInt = (Int.max / 2) + 1
        XCTAssertNil(largeInt.double())
    }
}
