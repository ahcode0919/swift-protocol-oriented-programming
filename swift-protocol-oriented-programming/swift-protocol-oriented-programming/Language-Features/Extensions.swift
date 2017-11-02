//
//  Extensions.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//Extensions can extend existing types

extension Int {
    func double() -> Int? {
        guard self <= Int.max / 2 else {
            return nil
        }
        return self + self
    }
}

// 5.double() = 10
