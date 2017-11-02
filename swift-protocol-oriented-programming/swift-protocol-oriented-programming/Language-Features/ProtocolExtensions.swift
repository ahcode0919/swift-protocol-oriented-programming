//
//  ProtocolExtensions.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

protocol ProtocolExtensionExample { }

extension ProtocolExtensionExample {
    func getTheNumber10() -> Int {
        return 10
    }
}

struct ProtocolExtensionExampleType: ProtocolExtensionExample { }

//ProtocolExtensionExampleType().getTheNumber10() -> 10
