//
//  AssociatedTypesWithAGenericWhereClause.swift
//  Generics
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class AssociatedTypesWithAGenericWhereClause: XCTestCase {

    

}

//class AssociatedTypesWithAGenericWhereClause {
//    protocol Container {
//        associatedtype Item
//        mutating func append(_ item: Item)
//        var count: Int { get }
//        subscript(i: Int) -> Item { get }
//        
//        associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
//        func makeIterator() -> Iterator
//    }
//    
//    
//    
//    
//    
//    protocol ComparableContainer: Container where Item: Comparable { }
//}
