//
//  ErrorHandling.swift
//  ErrorHandling
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ErrorHandling: XCTestCase {

    

}

//MARK: Representing and Throwing Errors
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)


//Handling Errors

//try
//try?
//try!

//Propagating Errors Using Throwing Functions

func canThrowErrors() throws -> String {return ""}
func cannotThrowErrors() -> String {return ""}


struct Item {
    var price: Int
    var count: Int
}


class VendingMachine {
    
    var inventory = [
        "Cnady Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        
        guard let item = inventory[name]
            else {
                throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.invalidSelection
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

////////////////////////////////////////////////////////
//let favoriteSnacks = [
//    "Alice": "Chips",
//    "Bob": "Licorice",
//    "Eve": "Pretzels"
//]
//func buyFovoriteSnack(person: String, vendingMachine: VendingMachine) throws {
//
//    let snackName = favoriteSnacks[person] ?? "Candy Bar"
//    try vendingMachine.vend(itemNamed: snackName)
//}
//
//
////MARK: - Handling Errors Using Do-Catch
//
//var vendingMachine = VendingMachine()
//vendingMachine.coinsDeposited = 8
//
//do {
//    try buyFovoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//    print("Success! Yum.")
//} catch VendingMachineError.invalidSelection {
//    print("Invalid Selection.")
//} catch VendingMachineError.outOfStock {
//    print("Out of Stock.")
//} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
//    print("Insufficient funds. Please, insert an additional \(coinsNeeded) coins.")
//} catch {
//    print("Unexpected error: \(error).")
//}
//
////Prints ""Insufficient funds. Please, insert an additional 2 coins.""
//
////MARK: - One More Example
//
//func nourish(with item: String) throws {
//    do {
//        try vendingMachine.vend(itemNamed: item)
//    } catch is VendingMachineError {
//        print("Invalid selection, out of stock, or not enough money.")
//    }
//}
//
//do {
//    try nourish(with: "Beet-Flovored Chips")
//} catch {
//    print("Unexpected non-vending-machine-related error: \(error)")
//}
////Prints "Invalid selection, out of stock, or not enough money"
//
//
////MARK: - Converting Errors to Optinal Values
//
//func someThrowingFunction() throws -> Int {
//    //...
//}
//
//let x = try? someThrowingFunction()
//
//let y: Int?
//
//do {
//    y = try someThrowingFunction()
//} catch {
//    y = nil
//}
//
//func fetchData() -> Data? {
//    if let data = try? fetchDataFromDisk() { return data }
//    if let data = try? fetchDataFromServer() { return data }
//}
//
//
////MARK: - Disabling Error Propagation
//
//let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
//
////MARK: - Specifying Cleanup Actions
//
//func processFile(filename: String) throws {
//    if exists(filename) {
//        let file = open(filename)
//        defer {
//            close(file)
//        }
//        while let line = try file.readline()
//        {/*Work with the file*/}
//        //Close(file) is called here, at the end of the scope
//    }
//}
