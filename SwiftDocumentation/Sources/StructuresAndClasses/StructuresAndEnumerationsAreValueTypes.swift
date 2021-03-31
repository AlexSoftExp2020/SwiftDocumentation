//
//  StructuresAndEnumerationsAreValueTypes.swift
//  StructuresAndClasses
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class StructuresAndEnumerationsAreValueTypes: XCTestCase {

    let hd = Resolution(width: 1920, height: 1080)
    
    func testExecution() {
        
        var cinema = hd
        
        cinema.width = 2048
        
        print("cinema is now \(cinema.width) pixels wide")
        // Prints "cinema is now 2048 pixels wide"
        
        print("hd is still \(hd.width) pixels wide")
        // Prints "hd is still 1920 pixels wide"
    }
    
    enum CompassPoint {
        case north, south, east, west
        mutating func turnNorth() {
            self = .north
        }
    }
    var currentDirection = CompassPoint.west
    
    
    func testExecution2() {
        
        let rememberedDirection = currentDirection
        currentDirection.turnNorth()
        
        print("The current direction is \(currentDirection)")
        print("The remembered direction is \(rememberedDirection)")
        // Prints "The current direction is north"
        // Prints "The remembered direction is west"
    }
}
