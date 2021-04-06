//
//  DefiningModelClassesForOptinalChaining.swift
//  OptinalChaining
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class DefiningModelClassesForOptinalChaining: XCTestCase {

}

class DefiningModelClassesForOpticalChaining {
    
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
}
