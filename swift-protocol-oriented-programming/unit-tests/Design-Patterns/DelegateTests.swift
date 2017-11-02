//
//  DelegateTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class MyClassNameDelegateTests: XCTestCase {
    func testMyClassNameDelegate() {
        let delegate = MyClassNameDelegate()
        XCTAssertEqual(delegate.className, "")
    }
    
    func testLogClassName() {
        var delegate = MyClassNameDelegate()
        delegate.logClassName(for: delegate)
        XCTAssertEqual(delegate.className, "MyClassNameDelegate")
    }
}

class DelegateTests: XCTestCase {

    func testDelegateExample() {
        var delegate = MyClassNameDelegate()
        let delegateExample = DelegateExample(classNameDelegate: delegate)
        XCTAssertEqual(delegate.className, "")
    }
    
    func testLogClassNameDelegateExample() {
        var delegate = MyClassNameDelegate()
        let delegateExample = DelegateExample(classNameDelegate: delegate)
        delegateExample.logClassName()
        XCTAssertEqual(delegateExample.classNameDelegate.className, "DelegateExample")
    }
}
