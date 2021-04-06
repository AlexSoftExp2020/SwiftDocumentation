//
//  Setting_A_Default_Property_Value_With_A_Closure_Or_Function.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Setting_A_Default_Property_Value_With_A_Closure_Or_Function: XCTestCase {

    
}

class SettingADefaultPropertyValueWithAClosureOrFunction {
    
    class SomeClass {
        
//        let someProperty: SomeType = {
//            // create a default value for someProperty inside this closure
//            // someValue must be of the same type as SomeType
//            return someValue
//        }()
    }
    
    
    
    
    
    struct Chessboard {
        let boardColors: [Bool] = {
            var temporaryBoard = [Bool]()
            var isBlack = false
            for i in 1...8 {
                for j in 1...8 {
                    temporaryBoard.append(isBlack)
                    isBlack = !isBlack
                }
                isBlack = !isBlack
            }
            return temporaryBoard
        }()
        func squareIsBlackAt(row: Int, column: Int) -> Bool {
            return boardColors[(row * 8) + column]
        }
    }
    
    
    
    
    
    
    let board = Chessboard()
    
    func testExecution() {
        print(board.squareIsBlackAt(row: 0, column: 1))
        // Prints "true"
        print(board.squareIsBlackAt(row: 7, column: 7))
        // Prints "false"
    }
}
