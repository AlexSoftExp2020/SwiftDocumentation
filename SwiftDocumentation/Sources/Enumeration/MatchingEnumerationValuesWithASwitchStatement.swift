//
//  MatchingEnumerationValuesWithASwitchStatement.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class MatchingEnumerationValuesWithASwitchStatement: XCTestCase {

    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
    enum Planet {
        case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
    var directionToHead = CompassPoint.west
    
    func testExecution() {
        directionToHead = .south
        switch directionToHead {
        case .north:
        print("Lots of planets have a north")
        case .south:
        print("Watch out for penguins")
        case .east:
        print("Where the sun rises")
        case .west:
        print("Where the skies are blue")
        }
        // Prints "Watch out for penguins"
    }
    
    let somePlanet = Planet.earth
    
    func testExecution2() {
        switch somePlanet {
        case .earth:
        print("Mostly harmless")
        default:
        print("Not a safe place for humans")
        }
        // Prints "Mostly harmless"
    }
}
