//
//  RawValues.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class RawValues: XCTestCase {

    enum ASCIIControlCharacter: Character {
        case tab = "\t"
        case lineFeed = "\n"
        case carriageReturn = "\r"
    }
}

class ImplicitlyAssignedRawValues: XCTestCase {
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
    enum CompassPoint: String {
        case north, south, east, west
    }
}

class InitializingFromARawValue: XCTestCase {
    
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
    let possiblePlanet = Planet(rawValue: 7)
    // possiblePlanet is of type Planet? and equals Planet.uranus
    
    let positionToFind = 11
    func testExecution() {
        
        if let somePlanet = Planet(rawValue: positionToFind) {
            switch somePlanet {
            case .earth:
                print("Mostly harmless")
            default:
                print("Not a safe place for humans")
            }
        } else {
        print("There isn't a planet at position \(positionToFind)")
        }
        // Prints "There isn't a planet at position 11"
    }
}
