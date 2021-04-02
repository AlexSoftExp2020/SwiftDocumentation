//
//  DefiningABaseClass.swift
//  Inheritance
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class DefiningABaseClass: XCTestCase {

    class Vehicle {
        var currentSpeed = 0.0
        var description: String {
            return "traveling at \(currentSpeed) miles per hour"
        }
        func makeNoise() {
            // do nothing - an arbitrary vehicle doesn't necessarily make a noise
        }
    }




    let someVehicle = Vehicle()


    func testExecution() {
        print("Vehicle: \(someVehicle.description)")
        // Vehicle: traveling at 0.0 miles per hour
    }
    
}


