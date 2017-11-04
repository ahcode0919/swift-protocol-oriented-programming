//
//  BuilderTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/4/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class BuilderTests: XCTestCase {
    func testBoxBuilder() {
        let redBoxBuilder = RedBoxBuilder()
        let box = Box(builder: redBoxBuilder)
        XCTAssertEqual(redBoxBuilder.id, box.id)
        XCTAssertEqual(redBoxBuilder.name, box.name)
        XCTAssertEqual(redBoxBuilder.width, box.width)
        XCTAssertEqual(redBoxBuilder.height, box.height)
        XCTAssertEqual(redBoxBuilder.description, box.description)
        XCTAssertEqual(redBoxBuilder.domestic, box.domestic)
        XCTAssertEqual(redBoxBuilder.airMailable, box.airMailable)
    }
    
    func testConfigurableBoxBuilder() {
        var configurableBlueBox = ConfigurableBlueBox()
        XCTAssertEqual(configurableBlueBox.description, "A Blue Box")
        
        let newDescription = "An even cooler Blue Box"
        configurableBlueBox.setDescription(newDescription)
        let box = Box(builder: configurableBlueBox)
        XCTAssertEqual(box.description, newDescription)
    }
}
