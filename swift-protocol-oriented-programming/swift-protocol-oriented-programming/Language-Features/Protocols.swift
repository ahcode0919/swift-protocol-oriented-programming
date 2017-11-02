//
//  Protocols.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//Protocols specify computed properties and functions for a 'Type'

protocol ExampleProtocol {
    func getName() -> String
}

struct ExampleProtocolType: ExampleProtocol {
    func getName() -> String {
        return "\(type(of: self))"
    }
}
