//
//  Subclassing.swift
//  Inheritance
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Subclassing: XCTestCase {

    
}

class SomeSuperclass {
    // superclass definition goes here
}

class SomeSubclass: SomeSuperclass {
    // subclass definition goes here
}

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class Execution: XCTestCase {
    
    let bicycle = Bicycle()
    
    func testExecution() {
        bicycle.hasBasket = true


        bicycle.currentSpeed = 15.0
        print("Bicycle: \(bicycle.description)")
        // Bicycle: traveling at 15.0 miles per hour


        class Tandem: Bicycle {
            var currentNumberOfPassengers = 0
        }


        let tandem = Tandem()
        tandem.hasBasket = true
        tandem.currentNumberOfPassengers = 2
        tandem.currentSpeed = 22.0
        print("Tandem: \(tandem.description)")
        // Tandem: traveling at 22.0 miles per hour
    }
}


