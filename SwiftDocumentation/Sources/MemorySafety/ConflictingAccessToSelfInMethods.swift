//
//  ConflictingAccessToSelfInMethods.swift
//  MemorySafety
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ConflictingAccessToSelfInMethods: XCTestCase {

    

}

//class ConflictingAccessToSelfInMethods {
//    struct Player {
//        var name: String
//        var health: Int
//        var energy: Int
//        
//        static let maxHealth = 10
//        mutating func restoreHealth() {
//            health = Player.maxHealth
//        }
//    }
//    
//    
//    
//    
//    
//    
//    extension Player {
//        mutating func shareHealth(with teammate: inout Player) {
//            balance(&teammate.health, &health)
//        }
//    }
//    
//    var oscar = Player(name: "Oscar", health: 10, energy: 10)
//    var maria = Player(name: "Maria", health: 5, energy: 10)
//    oscar.shareHealth(with: &maria)  // OK
//    
//    
//    
//    
//    
//    oscar.shareHealth(with: &oscar)
//    // Error: conflicting accesses to oscar
//
//}
