//
//  Overriding.swift
//  Inheritance
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Overriding: XCTestCase {

    

}

class OverridingMethods {
    class Train: Vehicle {
        override func makeNoise() {
            print("Choo Choo")
        }
    }
}

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}


class Execution1: XCTestCase {
    let train = Train()
    func testExecution() {
        train.makeNoise()
        // Prints "Choo Choo"
    }
}



class OverridingPropertyGettersAndSetters {
    class Car: Vehicle {
        var gear = 1
        override var description: String {
            return super.description + " in gear \(gear)"
        }
    }
    
    let car = Car()
    
    func testExecution() {
        car.currentSpeed = 25.0
        car.gear = 3
        print("Car: \(car.description)")
        // Car: traveling at 25.0 miles per hour in gear 3
    }
}


class OverridingPropertyObservers {
    
    class Car: Vehicle {
        var gear = 1
        override var description: String {
            return super.description + " in gear \(gear)"
        }
    }
    
    class AutomaticCar: Car {
        override var currentSpeed: Double {
            didSet {
                gear = Int(currentSpeed / 10.0) + 1
            }
        }
    }

    func testExecution() {
        let automatic = AutomaticCar()
        automatic.currentSpeed = 35.0
        print("AutomaticCar: \(automatic.description)")
        // AutomaticCar: traveling at 35.0 miles per hour in gear 4
    }
}
