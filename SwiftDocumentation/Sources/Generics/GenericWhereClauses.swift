//
//  GenericWhereClauses.swift
//  Generics
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class GenericWhereClauses: XCTestCase {

    

}

//class GenericWhereClauses {
//    func allItemsMatch<C1: Container, C2: Container>
//        (_ someContainer: C1, _ anotherContainer: C2) -> Bool
//        where C1.Item == C2.Item, C1.Item: Equatable {
//            
//            // Check that both containers contain the same number of items.
//            if someContainer.count != anotherContainer.count {
//                return false
//            }
//            
//            // Check each pair of items to see if they're equivalent.
//            for i in 0..<someContainer.count {
//                if someContainer[i] != anotherContainer[i] {
//                    return false
//                }
//            }
//            
//            // All items match, so return true.
//            return true
//    }
//    
//    
//    
//    
//    
//    var stackOfStrings = Stack<String>()
//    stackOfStrings.push("uno")
//    stackOfStrings.push("dos")
//    stackOfStrings.push("tres")
//    
//    var arrayOfStrings = ["uno", "dos", "tres"]
//    
//    if allItemsMatch(stackOfStrings, arrayOfStrings) {
//    print("All items match.")
//    } else {
//    print("Not all items match.")
//    }
//    // Prints "All items match."
//
//}
