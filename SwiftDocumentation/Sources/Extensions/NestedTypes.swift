//
//  NestedTypes.swift
//  Extensions
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class NestedTypes: XCTestCase {

    
}

//class NestedTypes {
//    extension Int {
//        enum Kind {
//            case negative, zero, positive
//        }
//        var kind: Kind {
//            switch self {
//            case 0:
//                return .zero
//            case let x where x > 0:
//                return .positive
//            default:
//                return .negative
//            }
//        }
//    }
//
//
//
//
//    func printIntegerKinds(_ numbers: [Int]) {
//        for number in numbers {
//            switch number.kind {
//            case .negative:
//                print("- ", terminator: "")
//            case .zero:
//                print("0 ", terminator: "")
//            case .positive:
//                print("+ ", terminator: "")
//            }
//        }
//        print("")
//    }
//    printIntegerKinds([3, 19, -27, 0, -6, 0, 7])
//    // Prints "+ + - 0 - 0 + "
//}
