//
//  Delegate.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The delegation pattern is a pattern where an instance of one type acts on behalf of another instance. The instance
//that is doing the delegating keeps a reference to the delegate instance and then, when an action happens, the
//delegating instance sends a message to the delegate who performs some function.

protocol ClassNameDelegate {
    var className: String { get set }
    
    mutating func logClassName(for: Any)
}

struct MyClassNameDelegate: ClassNameDelegate {
    var className: String = ""
    
    mutating func logClassName(for object: Any) {
        className = "\(type(of: object))"
    }
}

class DelegateExample {
    var classNameDelegate: ClassNameDelegate
    
    init(classNameDelegate: ClassNameDelegate) {
        self.classNameDelegate = classNameDelegate
    }
    
    func logClassName() {
        classNameDelegate.logClassName(for: self)
    }
}
