//
//  ConflictingAccessToProperties.swift
//  MemorySafety
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ConflictingAccessToProperties: XCTestCase {

    
}

//class ConflictingAccessToProperties {
//    var playerInformation = (health: 10, energy: 20)
//    balance(&playerInformation.health, &playerInformation.energy)
//    // Error: conflicting access to properties of playerInformation
//
//    
//    
//    
//    
//    var holly = Player(name: "Holly", health: 10, energy: 10)
//    balance(&holly.health, &holly.energy)  // Error
//    
//    
//    
//    
//    
//    func someFunction() {
//        var oscar = Player(name: "Oscar", health: 10, energy: 10)
//        balance(&oscar.health, &oscar.energy)  // OK
//    }
//}
