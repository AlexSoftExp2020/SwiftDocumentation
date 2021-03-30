//
//  RecursiveEnumeration.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class RecursiveEnumeration: XCTestCase {

    enum ArithmeticExpression {
        case number(Int)
        indirect case addition(ArithmeticExpression, ArithmeticExpression)
        indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    }
    
    indirect enum ArithmeticExpression1 {
        case number(Int)
        case addition(ArithmeticExpression1, ArithmeticExpression1)
        case multiplication(ArithmeticExpression1, ArithmeticExpression1)
    }
    
    let five = ArithmeticExpression1.number(5)
    let four = ArithmeticExpression1.number(4)
    
    func testExecution() {
        let sum = ArithmeticExpression1.addition(five, four)
        let product = ArithmeticExpression1.multiplication(sum, ArithmeticExpression1.number(2))
    }
    
    func evaluate(_ expression: ArithmeticExpression) -> Int {
        switch expression {
        case let .number(value):
            return value
        case let .addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
        }
    }
}
