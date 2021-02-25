//
//  Arrays.swift
//  CollectionTypes
//
//  Created by Oleksii Pidgornyi on 27.12.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - ARRAYS

class Arrays: XCTestCase {
    
        //Array<Element>
        
        func testCreateAnEmptyArray() {
            
            var someInts = [Int]()
            print("someInts is of type [Int] with \(someInts.count) items.")
            // Prints "someInts is of type [Int] with 0 items."
        }
        
        func testCreateArrayWithDefaultValue() {
           
            var threeDoubles = Array(repeating: 0.0, count: 3)
            // threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
        }
        
        func testCreatingAnArrayByAddingTwoArraysTogether() {
            
            var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
            // anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]
            
            var threeDoubles = Array(repeating: 0.0, count: 3)
            
            var sixDoubles = threeDoubles + anotherThreeDoubles
            // sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
        }
        
        func testCreatingAnArrayWithAnArrayLiteral() {
            
            var shoppingList: [String] = ["Eggs", "Milk"]
            // shoppingList has been initialized with two initial items
            
            //Short Form without the type
            //var shoppingList = ["Eggs", "Milk"]
        }
        
        func testAccessingAndModifyingAnArray() {
            
            var shoppingList: [String] = ["Eggs", "Milk"]
            
            print("The shopping list contains \(shoppingList.count) items.")
            // Prints "The shopping list contains 2 items."
            
            if shoppingList.isEmpty {
                print("The shopping list is empty.")
            } else {
                print("The shopping list is not empty.")
            }
            // Prints "The shopping list is not empty."
            
            shoppingList.append("Flour")
            // shoppingList now contains 3 items, and someone is making pancakes
            
            shoppingList += ["Baking Powder"]
            // shoppingList now contains 4 items
            shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
            // shoppingList now contains 7 items
            
            var firstItem = shoppingList[0]
            // firstItem is equal to "Eggs"
            
            shoppingList[0] = "Six eggs"
            // the first item in the list is now equal to "Six eggs" rather than "Eggs"
            
            shoppingList[4...6] = ["Bananas", "Apples"]
            // shoppingList now contains 6 items
            
            shoppingList.insert("Maple Syrup", at: 0)
            // shoppingList now contains 7 items
            // "Maple Syrup" is now the first item in the list
            
            let mapleSyrup = shoppingList.remove(at: 0)
            // the item that was at index 0 has just been removed
            // shoppingList now contains 6 items, and no Maple Syrup
            // the mapleSyrup constant is now equal to the removed "Maple Syrup" string
            
            firstItem = shoppingList[0]
            // firstItem is now equal to "Six eggs"
            
            let apples = shoppingList.removeLast()
            // the last item in the array has just been removed
            // shoppingList now contains 5 items, and no apples
            // the apples constant is now equal to the removed "Apples" string
            
            func testIteratingOverInArray() {
                for item in shoppingList {
                    print(item)
                }
                // Six eggs
                // Milk
                // Flour
                // Baking Powder
                // Bananas
                
                for (index, value) in shoppingList.enumerated() {
                    print("Item \(index + 1): \(value)")
                }
                // Item 1: Six eggs
                // Item 2: Milk
                // Item 3: Flour
                // Item 4: Baking Powder
                // Item 5: Bananas
        }
    }
}

