//
//  SingletonTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class SingletonTests: XCTestCase {
    func testSingleton() {
        let singleton1 = SingletonExample.sharedInstance
        let singleton2 = SingletonExample.sharedInstance
        XCTAssertTrue(singleton1 === singleton2) // === 'compare references'
    }
}
