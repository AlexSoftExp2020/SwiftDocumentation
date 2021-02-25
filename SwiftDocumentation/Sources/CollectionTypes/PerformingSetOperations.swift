//
//  PerformingSetOperations.swift
//  CollectionTypes
//
//  Created by Oleksii Pidgornyi on 29.12.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - PERFORMING SET OPERATIONS

class PerformingSetOperations: XCTestCase {

    func testFundementalSetOperations() {
        
        /*
         Use the intersection(_:) method to create a new set with only the values common to both sets.
         Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.
         Use the union(_:) method to create a new set with all of the values in both sets.
         Use the subtracting(_:) method to create a new set with values not in the specified set.
         */
        
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        
        oddDigits.union(evenDigits).sorted()
        // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        oddDigits.intersection(evenDigits).sorted()
        // []
        oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
        // [1, 9]
        oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
        // [1, 2, 9]
    }

    func testSetMembershipAndEquality() {
        
        /*
         Use the “is equal” operator (==) to determine whether two sets contain all of the same values.
         Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.
         Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.
         Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.
         Use the isDisjoint(with:) method to determine whether two sets have no values in common.
         */
        
        
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        
        houseAnimals.isSubset(of: farmAnimals)
        // true
        farmAnimals.isSuperset(of: houseAnimals)
        // true
        farmAnimals.isDisjoint(with: cityAnimals)
        // true
    }
}
