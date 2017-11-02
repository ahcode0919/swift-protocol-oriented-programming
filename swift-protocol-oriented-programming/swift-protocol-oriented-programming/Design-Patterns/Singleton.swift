//
//  Singleton.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The singleton pattern restricts the instantiation of a class to a single instance for the lifetime of an application.
class SingletonExample {
    static let sharedInstance = SingletonExample()
    
    private init() { }
}
