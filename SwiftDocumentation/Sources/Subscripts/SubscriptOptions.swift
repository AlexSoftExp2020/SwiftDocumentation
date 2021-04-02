//
//  SubscriptOptions.swift
//  Subscripts
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class SubscriptOptions: XCTestCase {

    
}

struct Matrix {
    
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
    
//    func testExecution() {
//        var matrix = Matrix(rows: 2, columns: 2)
//
//        matrix[0, 1] = 1.5
//        matrix[1, 0] = 3.2
//    }
    
    
    
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
    
    //let someValue = matrix[2, 2]
    // This triggers an assert, because [2, 2] is outside of the matrix bounds.
}
