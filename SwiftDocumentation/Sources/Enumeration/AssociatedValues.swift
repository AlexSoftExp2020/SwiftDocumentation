//
//  AssociatedValues.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class AssociatedValues: XCTestCase {

    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }
    
    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
    
    func testExecution() {
        productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
        
        switch productBarcode {
        case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
        case .qrCode(let productCode):
        print("QR code: \(productCode).")
        }
        // Prints "QR code: ABCDEFGHIJKLMNOP."
        
        
        switch productBarcode {
        case let .upc(numberSystem, manufacturer, product, check):
        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
        case let .qrCode(productCode):
        print("QR code: \(productCode).")
        }
        // Prints "QR code: ABCDEFGHIJKLMNOP."
    }
}
