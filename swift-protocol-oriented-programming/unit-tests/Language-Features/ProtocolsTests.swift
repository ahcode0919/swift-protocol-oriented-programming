//
//  ProtocolsTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class ProtocolsTests: XCTestCase {
    func testExampleProtocolType() {
        let exampleProtocolType: ExampleProtocol = ExampleProtocolType()
        XCTAssertEqual(exampleProtocolType.getName(), "ExampleProtocolType")
    }
}
