//
//  HandlingErrors.swift
//  ErrorHandling
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class HandlingErrors: XCTestCase {

}

class PropagatingErrorsUsingThrowingFunctions {
    /*
     func canThrowErrors() throws -> String
     
     func cannotThrowErrors() -> String
     */
    
    
    
    struct Item {
        var price: Int
        var count: Int
    }
    
    class VendingMachine {
        var inventory = [
            "Candy Bar": Item(price: 12, count: 7),
            "Chips": Item(price: 10, count: 4),
            "Pretzels": Item(price: 7, count: 11)
        ]
        var coinsDeposited = 0
        
        func vend(itemNamed name: String) throws {
            guard let item = inventory[name] else {
                throw VendingMachineError.invalidSelection
            }
            
            guard item.count > 0 else {
                throw VendingMachineError.outOfStock
            }
            
            guard item.price <= coinsDeposited else {
                throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
            }
            
            coinsDeposited -= item.price
            
            var newItem = item
            newItem.count -= 1
            inventory[name] = newItem
            
            print("Dispensing \(name)")
        }
    }
    
    
    
    
    
    let favoriteSnacks = [
        "Alice": "Chips",
        "Bob": "Licorice",
        "Eve": "Pretzels",
        ]
    func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
        let snackName = favoriteSnacks[person] ?? "Candy Bar"
        try vendingMachine.vend(itemNamed: snackName)
        
        
        
        
        
        struct PurchasedSnack {
            let name: String
            init(name: String, vendingMachine: VendingMachine) throws {
                try vendingMachine.vend(itemNamed: name)
                self.name = name
            }
        }
    }
}


//class HandlingErrorsUsingDoCatch {
//    /*
//     do {
//     try expression
//     statements
//     } catch pattern 1 {
//     statements
//     } catch pattern 2 where condition {
//     statements
//     } catch {
//     statements
//     }
//     */
//
//
//    var vendingMachine = VendingMachine()
//    vendingMachine.coinsDeposited = 8
//    do {
//    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//    print("Success! Yum.")
//    } catch VendingMachineError.invalidSelection {
//    print("Invalid Selection.")
//    } catch VendingMachineError.outOfStock {
//    print("Out of Stock.")
//    } catch VendingMachineError.insufficientFunds(let coinsNeeded) {
//    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
//    } catch {
//    print("Unexpected error: \(error).")
//    }
//    // Prints "Insufficient funds. Please insert an additional 2 coins."
//
//
//
//
//
//
//    func nourish(with item: String) throws {
//        do {
//            try vendingMachine.vend(itemNamed: item)
//        } catch is VendingMachineError {
//            print("Invalid selection, out of stock, or not enough money.")
//        }
//    }
//
//    do {
//    try nourish(with: "Beet-Flavored Chips")
//    } catch {
//    print("Unexpected non-vending-machine-related error: \(error)")
//    }
//    // Prints "Invalid selection, out of stock, or not enough money."
//}
//
//
//class ConvertingErrorsToOptinalValues {
//    func someThrowingFunction() throws -> Int {
//        // ...
//    }
//
//    let x = try? someThrowingFunction()
//
//    let y: Int?
//    do {
//    y = try someThrowingFunction()
//    } catch {
//    y = nil
//    }
//
//
//    func fetchData() -> Data? {
//        if let data = try? fetchDataFromDisk() { return data }
//        if let data = try? fetchDataFromServer() { return data }
//        return nil
//    }
//
//
//    class DisablingErrorPropagation {
//        let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
//    }
//}
//
