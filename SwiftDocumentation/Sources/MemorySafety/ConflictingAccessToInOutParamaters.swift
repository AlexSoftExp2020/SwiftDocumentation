//
//  ConflictingAccessToInOutParamaters.swift
//  MemorySafety
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ConflictingAccessToInOutParamaters: XCTestCase {

    

}

//class ConflictingAccessToInOutParameters {
//    var stepSize = 1
//    
//    func increment(_ number: inout Int) {
//        number += stepSize
//    }
//    
//    increment(&stepSize)
//    // Error: conflicting accesses to stepSize
//
//    
//    
//    
//    
//    // Make an explicit copy.
//    var copyOfStepSize = stepSize
//    increment(&copyOfStepSize)
//    
//    // Update the original.
//    stepSize = copyOfStepSize
//    // stepSize is now 2
//    
//    
//    
//    
//    
//    func balance(_ x: inout Int, _ y: inout Int) {
//        let sum = x + y
//        x = sum / 2
//        y = sum - x
//    }
//    var playerOneScore = 42
//    var playerTwoScore = 30
//    balance(&playerOneScore, &playerTwoScore)  // OK
//    balance(&playerOneScore, &playerOneScore)
//    // Error: conflicting accesses to playerOneScore
//}
