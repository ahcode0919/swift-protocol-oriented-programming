//
//  Builder.swift
//  swift-protocol-oriented-programming
//
//  Created by Aaron Hinton on 11/4/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The main purpose of the builder pattern is to abstract the building of complex objects from its actual construction.
//Having the same construction process can create different representations of the product. This pattern can be used when:
//A client needs to construct complex objects without having to know its implementation
//A client needs to construct complex objects that need to have several implementations or representations

// MARK: Builder protocols - the fields and function necessary for constructing our object
protocol BoxBuilder {
    var id: Int { get }
    var name: String { get }
    var width: Int { get }
    var height: Int { get }
    var description: String { get }
    var domestic: Bool { get }
    var airMailable: Bool { get }
}

// Alternative configurable builder - Good for migrating legacy code or other situations were flexibility is needed
protocol ConfigurableBoxBuilder: BoxBuilder {
    mutating func setId(_ id: Int)
    mutating func setName(_ name: String)
    mutating func setWidth(_ width: Int)
    mutating func setHeight(_ height: Int)
    mutating func setDescription(_ description: String)
    mutating func setDomestic(_ domestic: Bool)
    mutating func setAirMailable(_ airMailable: Bool)
}

// MARK: Builders
struct RedBoxBuilder: BoxBuilder {
    let id: Int = 1
    let name: String = "Red Box"
    let width: Int = 5
    let height: Int = 5
    let description: String = "A Red Box"
    let domestic: Bool = true
    let airMailable: Bool = true
}

struct ConfigurableBlueBox: ConfigurableBoxBuilder {
    var id: Int = 2
    var name: String = "Blue Box"
    var width: Int = 5
    var height: Int = 10
    var description: String = "A Blue Box"
    var domestic: Bool = true
    var airMailable: Bool = true
    
    mutating func setId(_ id: Int) {
        self.id = id
    }
    
    mutating func setName(_ name: String) {
        self.name = name
    }
    
    mutating func setWidth(_ width: Int) {
        self.width = width
    }
    
    mutating func setHeight(_ height: Int) {
        self.height = height
    }
    
    mutating func setDescription(_ description: String) {
        self.description = description
    }
    
    mutating func setDomestic(_ domestic: Bool) {
        self.domestic = domestic
    }
    
    mutating func setAirMailable(_ airMailable: Bool) {
        self.airMailable = airMailable
    }
}

// MARK: Struct that builds object from builders

struct Box {
    var id: Int
    var name: String
    var width: Int
    var height: Int
    var description: String
    var domestic: Bool
    var airMailable: Bool
    
    init(builder: BoxBuilder) {
        self.id = builder.id
        self.name = builder.name
        self.width = builder.width
        self.height = builder.height
        self.description = builder.description
        self.domestic = builder.domestic
        self.airMailable = builder.airMailable
    }
}
