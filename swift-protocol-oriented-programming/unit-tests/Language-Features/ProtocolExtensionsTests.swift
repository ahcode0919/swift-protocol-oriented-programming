//
//  ProtocolExtensionsTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class ProtocolExtensionsTests: XCTestCase {
    func testGetTheNumber10() {
        let protocolExtensionExampleType: ProtocolExtensionExample = ProtocolExtensionExampleType()
        let number10 = protocolExtensionExampleType.getTheNumber10()
        XCTAssertEqual(number10, 10)
    }
}

