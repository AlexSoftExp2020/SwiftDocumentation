//
//  AssociatedTypes.swift
//  Generics
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class AssociatedTypes: XCTestCase {

    
}

//class AssociatedTypesInAction {
//    protocol Container {
//        associatedtype Item
//        mutating func append(_ item: Item)
//        var count: Int { get }
//        subscript(i: Int) -> Item { get }
//    }
//    
//    
//    
//    
//    
//    struct IntStack: Container {
//        // original IntStack implementation
//        var items = [Int]()
//        mutating func push(_ item: Int) {
//            items.append(item)
//        }
//        mutating func pop() -> Int {
//            return items.removeLast()
//        }
//        // conformance to the Container protocol
//        typealias Item = Int
//        mutating func append(_ item: Int) {
//            self.push(item)
//        }
//        var count: Int {
//            return items.count
//        }
//        subscript(i: Int) -> Int {
//            return items[i]
//        }
//    }
//    
//    
//    
//    
//    
//    
//    struct Stack<Element>: Container {
//        // original Stack<Element> implementation
//        var items = [Element]()
//        mutating func push(_ item: Element) {
//            items.append(item)
//        }
//        mutating func pop() -> Element {
//            return items.removeLast()
//        }
//        // conformance to the Container protocol
//        mutating func append(_ item: Element) {
//            self.push(item)
//        }
//        var count: Int {
//            return items.count
//        }
//        subscript(i: Int) -> Element {
//            return items[i]
//        }
//    }
//}
//
//
//class ExtendingConstraintsToAnAssociatedType {
//    protocol Container {
//        associatedtype Item: Equatable
//        mutating func append(_ item: Item)
//        var count: Int { get }
//        subscript(i: Int) -> Item { get }
//    }
//}
//
//class UsingAProtocolInItsAssociatedTypesConstraints {
//    protocol SuffixableContainer: Container {
//        associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
//        func suffix(_ size: Int) -> Suffix
//    }
//    
//    
//    
//    
//    
//    extension Stack: SuffixableContainer {
//        func suffix(_ size: Int) -> Stack {
//            var result = Stack()
//            for index in (count-size)..<count {
//                result.append(self[index])
//            }
//            return result
//        }
//        // Inferred that Suffix is Stack.
//    }
//    var stackOfInts = Stack<Int>()
//    stackOfInts.append(10)
//    stackOfInts.append(20)
//    stackOfInts.append(30)
//    let suffix = stackOfInts.suffix(2)
//    // suffix contains 20 and 30
//    
//    
//    
//    
//    
//    
//    extension IntStack: SuffixableContainer {
//        func suffix(_ size: Int) -> Stack<Int> {
//            var result = Stack<Int>()
//            for index in (count-size)..<count {
//                result.append(self[index])
//            }
//            return result
//        }
//        // Inferred that Suffix is Stack<Int>.
//    }
//}
