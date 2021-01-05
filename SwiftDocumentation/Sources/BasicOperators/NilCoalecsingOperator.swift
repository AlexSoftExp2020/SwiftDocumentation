//
//  NilCoalecsingOperator.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - NIL COALESCING OPERATOR

class NilCoalecsingOperator: XCTestCase {

      func test_first() {
          //a != nil ? a! : b
      }
      
      func test_second() {
          
          let defaultColorName = "red"
          var userDefinedColorName: String?   // defaults to nil
          
          var colorNameToUse = userDefinedColorName ?? defaultColorName
          // userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
      }
      
      func test_third() {
          
          let defaultColorName = "red"
         let userDefinedColorName = "green"
         var colorNameToUse = userDefinedColorName ?? defaultColorName
          // userDefinedColorName is not nil, so colorNameToUse is set to "green"
      }
}
