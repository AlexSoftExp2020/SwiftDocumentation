//
//  ErrorHandling2.swift
//  ErrorHandling
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ErrorHandling2: XCTestCase {

    

}

//enum DivError: Error {
//    case DivByZero
//    case DiveByMinus
//}
//
//func divide(param1: Int, param2: Int) throws -> Int {
//
//    if param2 == 0 {
//        throw DivError.DivByZero
//    }
//
//    if param2 < 0 {
//        throw DivError.DiveByMinus
//    }
//
//    return param1/param2
//
//}
//
//try? divide(param1: 10, param2: 5)
//
//let i: Int? = try? divide(param1: 10, param2: -1)
//
//do {
//    try divide(param1: 10, param2: -2)
//} catch DivError.DiveByMinus {
//    print("Dividing on minus")
//} catch DivError.DivByZero {
//    print("Dividing on minus")
//}
