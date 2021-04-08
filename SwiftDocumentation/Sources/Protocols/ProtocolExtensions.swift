//
//  ProtocolExtensions.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ProtocolExtensions: XCTestCase {

    

}

//class ProtocolExtensions {
//    extension RandomNumberGenerator {
//        func randomBool() -> Bool {
//            return random() > 0.5
//        }
//    }
//    
//    
//    
//    
//    
//    let generator = LinearCongruentialGenerator()
//    print("Here's a random number: \(generator.random())")
//    // Prints "Here's a random number: 0.3746499199817101"
//    print("And here's a random Boolean: \(generator.randomBool())")
//    // Prints "And here's a random Boolean: true"
//}
//
//class ProvidingDefaultImplementations {
//    
//    extension PrettyTextRepresentable  {
//        var prettyTextualDescription: String {
//            return textualDescription
//        }
//    }
//}
//
//
//class ProvidingDefaultImplementations {
//    extension PrettyTextRepresentable  {
//        var prettyTextualDescription: String {
//            return textualDescription
//        }
//    }
//}
//
//class AddingConstraintsToProtocolExtensions {
//    extension Collection where Element: Equatable {
//        func allEqual() -> Bool {
//            for element in self {
//                if element != self.first {
//                    return false
//                }
//            }
//            return true
//        }
//    }
//    
//    
//    
//    
//    
//    let equalNumbers = [100, 100, 100, 100, 100]
//    let differentNumbers = [100, 100, 200, 100, 200]
//    
//    
//    
//    
//    
//    print(equalNumbers.allEqual())
//    // Prints "true"
//    print(differentNumbers.allEqual())
//    // Prints "false"
//}
