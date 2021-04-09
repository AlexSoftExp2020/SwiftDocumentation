//
//  ExtensionsWithAGenericWhereClause.swift
//  Generics
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ExtensionsWithAGenericWhereClause: XCTestCase {

    

}

//class ExtensionsWithAGenericWhereClause {
//    extension Stack where Element: Equatable {
//        func isTop(_ item: Element) -> Bool {
//            guard let topItem = items.last else {
//                return false
//            }
//            return topItem == item
//        }
//    }
//    
//    
//    
//    
//    if stackOfStrings.isTop("tres") {
//    print("Top element is tres.")
//    } else {
//    print("Top element is something else.")
//    }
//    // Prints "Top element is tres."
//    
//    
//    
//    
//    
//    
//    struct NotEquatable { }
//    var notEquatableStack = Stack<NotEquatable>()
//    let notEquatableValue = NotEquatable()
//    notEquatableStack.push(notEquatableValue)
//    notEquatableStack.isTop(notEquatableValue)  // Error
//    
//    
//    
//    
//    
//    
//    extension Container where Item: Equatable {
//        func startsWith(_ item: Item) -> Bool {
//            return count >= 1 && self[0] == item
//        }
//    }
//    
//    
//    
//    
//    
//    if [9, 9, 9].startsWith(42) {
//    print("Starts with 42.")
//    } else {
//    print("Starts with something else.")
//    }
//    // Prints "Starts with something else."
//    
//    
//    
//    
//    
//    extension Container where Item == Double {
//        func average() -> Double {
//            var sum = 0.0
//            for index in 0..<count {
//                sum += self[index]
//            }
//            return sum / Double(count)
//        }
//    }
//    print([1260.0, 1200.0, 98.6, 37.0].average())
//    // Prints "648.9"
//}
