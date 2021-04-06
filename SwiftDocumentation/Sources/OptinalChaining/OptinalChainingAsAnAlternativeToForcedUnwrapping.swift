//
//  OptinalChainingAsAnAlternativeToForcedUnwrapping.swift
//  OptinalChaining
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class OptinalChainingAsAnAlternativeToForcedUnwrapping: XCTestCase {
//
//}

class OptinalChainingAsAnAlternativeToForcedUnwrapping {
    class Person {
        var residence: Residence?
    }
    
    class Residence {
        var numberOfRooms = 1
    }
    
    
    
    let john = Person()
    
    
    
    func testExecution() {
        let roomCount = john.residence!.numberOfRooms
        // this triggers a runtime error
        
        if let roomCount = john.residence?.numberOfRooms {
            print("John's residence has \(roomCount) room(s).")
        } else {
        print("Unable to retrieve the number of rooms.")
        }
        // Prints "Unable to retrieve the number of rooms."
        
        john.residence = Residence()
        
        if let roomCount = john.residence?.numberOfRooms {
            print("John's residence has \(roomCount) room(s).")
        } else {
        print("Unable to retrieve the number of rooms.")
        }
        // Prints "John's residence has 1 room(s)."
    }
}
