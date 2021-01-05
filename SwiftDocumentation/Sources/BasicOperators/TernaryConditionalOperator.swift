//
//  TernaryConditionalOperator.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - TERNARY CONDITIONAL OPERATOR

class TernaryConditionalOperator: XCTestCase {

        func test_first() {
    //        if question {
    //            answer1
    //        } else {
    //            answer2
    //        }
        }
        
        func test_second() {
            func first() {
                let contentHeight = 40
                let hasHeader = true
                let rowHeight = contentHeight + (hasHeader ? 50 : 20)
                // rowHeight is equal to 90
            }
            
            func test_second() {
                let contentHeight = 40
                let hasHeader = true
                let rowHeight: Int
                if hasHeader {
                    rowHeight = contentHeight + 50
                } else {
                    rowHeight = contentHeight + 20
                }
                // rowHeight is equal to 90
            }
        }
}
