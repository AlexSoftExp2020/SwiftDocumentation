//
//  CallingMethodsThroughOptinalChaining.swift
//  OptinalChaining
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class CallingMethodsThroughOptinalChaining: XCTestCase {

}

class CallingMethodsThroughOpticalChaining {
    
    class Person {
        var residence: Residence?
    }
    
    
    
    class Residence {
        var rooms = [Room]()
        var numberOfRooms: Int {
            return rooms.count
        }
        subscript(i: Int) -> Room {
            get {
                return rooms[i]
            }
            set {
                rooms[i] = newValue
            }
        }
        func printNumberOfRooms() {
            print("The number of rooms is \(numberOfRooms)")
        }
        var address: Address?
    }

    
    
    
    
    class Room {
        let name: String
        init(name: String) { self.name = name }
    }
    
    class Address {
        var buildingName: String?
        var buildingNumber: String?
        var street: String?
        func buildingIdentifier() -> String? {
            if let buildingNumber = buildingNumber, let street = street {
                return "\(buildingNumber) \(street)"
            } else if buildingName != nil {
                return buildingName
            } else {
                return nil
            }
        }
    }
    
    let john = Person()
    
    func testExecution() {
        if let roomCount = john.residence?.numberOfRooms {
            print("John's residence has \(roomCount) room(s).")
        } else {
        print("Unable to retrieve the number of rooms.")
        }
        // Prints "Unable to retrieve the number of rooms."
        
        let someAddress = Address()
        someAddress.buildingNumber = "29"
        someAddress.street = "Acacia Road"
        john.residence?.address = someAddress
    }
    
    func createAddress() -> Address {
        print("Function was called.")
        
        let someAddress = Address()
        someAddress.buildingNumber = "29"
        someAddress.street = "Acacia Road"
        
        return someAddress
    }
    
    func testExecution1() {
        john.residence?.address = createAddress()
    }
    
    func printNumberOfRooms() {
        //print("The number of rooms is \(numberOfRooms)")
    }
    
    func testExecution2() {
        
        if john.residence?.printNumberOfRooms() != nil {
        print("It was possible to print the number of rooms.")
        } else {
        print("It was not possible to print the number of rooms.")
        }
        // Prints "It was not possible to print the number of rooms."
        
    }
    
    func testExecution3() {
//        if (john.residence?.address = someAddress) != nil {
//        print("It was possible to set the address.")
//        } else {
//        print("It was not possible to set the address.")
//        }
        // Prints "It was not possible to set the address."
    }
}

