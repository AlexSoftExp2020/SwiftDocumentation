//
//  FunctionArgumentLabelsAndParameterNames.swift
//  Functions
//
//  Created by Oleksii Pidgornyi on 04.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class FuncArgLabAndParamNames: XCTestCase {
    
    func testSomeFunction(firstParameterName: Int, secondParameterName: Int) {
        // In the function body, firstParameterName and secondParameterName
        // refer to the argument values for the first and second parameters.
    }
    //testSomeFunction(firstParameterName: 1, secondParameterName: 2)
}

class SpecifyingArgumentLabels: XCTestCase {
    
    func testSomeFunction(argumentLabel parameterName: Int) {
        // In the function body, parameterName refers to the argument value
        // for that parameter.
    }

    func testGreet(person: String, from hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }
    //print(testGreet(person: "Bill", from: "Cupertino"))
    // Prints "Hello Bill!  Glad you could visit from Cupertino."
}

class OmittingArgumentLabels: XCTestCase {
    
    func testSomeFunction(_ firstParameterName: Int, secondParameterName: Int) {
        // In the function body, firstParameterName and secondParameterName
        // refer to the argument values for the first and second parameters.
    }
    
    //testSomeFunction(1, secondParameterName: 2)
}

class DefaultParameterValues: XCTestCase {
    
    func testSomeFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
        // If you omit the second argument when calling this function, then
        // the value of parameterWithDefault is 12 inside the function body.
    }
    
    //testSomeFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
    //testSomeFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
}

class VariadicParameters: XCTestCase {
    func testArithmeticMean(_ numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    
    //testArithmeticMean(1, 2, 3, 4, 5)
    // returns 3.0, which is the arithmetic mean of these five numbers
    
    //testArithmeticMean(3, 8.25, 18.75)
    // returns 10.0, which is the arithmetic mean of these three numbers
}


class InOutParameters: XCTestCase {
    
    func testSwapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    var someInt = 3
    var anotherInt = 107
    //testSwapTwoInts(&someInt, &anotherInt)
    //print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
    
    // Prints "someInt is now 107, and anotherInt is now 3"

}
