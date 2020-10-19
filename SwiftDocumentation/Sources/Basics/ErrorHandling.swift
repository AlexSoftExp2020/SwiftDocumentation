//
//  ErrorHandling.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 18.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - ERROR HANDLING

class ErrorHandling: XCTestCase {

    func test_canThrowAnError() throws {
        // this function may or may not throw an error
    }
    
    
    //    do {
    //    try canThrowAnError()
    //    // no error was thrown
    //    } catch {
    //    // an error was thrown
    //    }
    //
    //    func makeASandwich() throws {
    //    // ...
    //    }
    //
    //    do {
    //    try makeASandwich()
    //    eatASandwich()
    //    } catch SandwichError.outOfCleanDishes {
    //    washDishes()
    //    } catch SandwichError.missingIngredients(let ingredients) {
    //    buyGroceries(ingredients)
    //    }
}
