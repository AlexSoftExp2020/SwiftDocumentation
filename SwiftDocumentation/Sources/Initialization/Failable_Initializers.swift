//
//  Failable_Initializers.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Failable_Initializers: XCTestCase {
    
}

class FailableInitialiers: XCTestCase {
    
    let wholeNumber: Double = 12345.0
    let pi = 3.14159
    
    func testExecution() {
        
        if let valueMaintained = Int(exactly: wholeNumber) {
            print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")
        }
        // Prints "12345.0 conversion to Int maintains value of 12345"
        
        let valueChanged = Int(exactly: pi)
        // valueChanged is of type Int?, not Int
        
        if valueChanged == nil {
        print("\(pi) conversion to Int does not maintain value")
        }
        // Prints "3.14159 conversion to Int does not maintain value"
    }
    
    struct Animal {
        let species: String
        init?(species: String) {
            if species.isEmpty { return nil }
            self.species = species
        }
    }
    
    
    
    
    
    let someCreature = Animal(species: "Giraffe")
    // someCreature is of type Animal?, not Animal
    
    func testExecution1() {
        if let giraffe = someCreature {
            print("An animal was initialized with a species of \(giraffe.species)")
        }
        // Prints "An animal was initialized with a species of Giraffe"
        
        
        
        
        let anonymousCreature = Animal(species: "")
        // anonymousCreature is of type Animal?, not Animal
        
        if anonymousCreature == nil {
        print("The anonymous creature could not be initialized")
        }
        // Prints "The anonymous creature could not be initialized"
    }
}


class FailableInitializersForEnumerations {
    
    enum TemperatureUnit {
        case kelvin, celsius, fahrenheit
        init?(symbol: Character) {
            switch symbol {
            case "K":
                self = .kelvin
            case "C":
                self = .celsius
            case "F":
                self = .fahrenheit
            default:
                return nil
            }
        }
    }
    
    
    let fahrenheitUnit = TemperatureUnit(symbol: "F")
    
    func testExecution() {
        if fahrenheitUnit != nil {
        print("This is a defined temperature unit, so initialization succeeded.")
        }
        // Prints "This is a defined temperature unit, so initialization succeeded."
        
        let unknownUnit = TemperatureUnit(symbol: "X")
        if unknownUnit == nil {
        print("This is not a defined temperature unit, so initialization failed.")
        }
        // Prints "This is not a defined temperature unit, so initialization failed."
    }
}


class FailableInitializersForEnumerationsWithRawValues {
    
    
    enum TemperatureUnit: Character {
        case kelvin = "K", celsius = "C", fahrenheit = "F"
    }
    
    let fahrenheitUnit = TemperatureUnit(rawValue: "F")
    
    func testExecution() {
        if fahrenheitUnit != nil {
        print("This is a defined temperature unit, so initialization succeeded.")
        }
        // Prints "This is a defined temperature unit, so initialization succeeded."
        
        let unknownUnit = TemperatureUnit(rawValue: "X")
        if unknownUnit == nil {
        print("This is not a defined temperature unit, so initialization failed.")
        }
        // Prints "This is not a defined temperature unit, so initialization failed."
    }
}


class PropagationOfInitializationFailure {
    class Product {
        let name: String
        init?(name: String) {
            if name.isEmpty { return nil }
            self.name = name
        }
    }
    
    
    
    
    
    
    class CartItem: Product {
        let quantity: Int
        init?(name: String, quantity: Int) {
            if quantity < 1 { return nil }
            self.quantity = quantity
            super.init(name: name)
        }
    }
    
    
    
    
    func testExecution() {
        
        if let twoSocks = CartItem(name: "sock", quantity: 2) {
            print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
        }
        // Prints "Item: sock, quantity: 2"
        
        
        if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
            print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
        } else {
        print("Unable to initialize zero shirts")
        }
        // Prints "Unable to initialize zero shirts"
        
        
        if let oneUnnamed = CartItem(name: "", quantity: 1) {
            print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
        } else {
        print("Unable to initialize one unnamed product")
        }
        // Prints "Unable to initialize one unnamed product"
    }
    
}


class OverridingAFailableInitializer {
    
    class Document {
        var name: String?
        // this initializer creates a document with a nil name value
        init() {}
        // this initializer creates a document with a nonempty name value
        init?(name: String) {
            if name.isEmpty { return nil }
            self.name = name
        }
    }
    
    
    
    
    
    class AutomaticallyNamedDocument: Document {
        override init() {
            super.init()
            self.name = "[Untitled]"
        }
        override init(name: String) {
            super.init()
            if name.isEmpty {
                self.name = "[Untitled]"
            } else {
                self.name = name
            }
        }
    }
    
    
    
    
    
    class UntitledDocument: Document {
        override init() {
            super.init(name: "[Untitled]")!
        }
    }
    
}

