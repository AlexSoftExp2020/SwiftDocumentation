//
//  ResolvingStrongReferenceCyclesBetweenClassInstances.swift
//  AutomaticReferenceCounting
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ResolvingStrongReferenceCyclesBetweenClassInstances: XCTestCase {

    

}

//class ResolvingStrongReferenceCyclesBetweenClassInstances {
//    class Person {
//        let name: String
//        init(name: String) { self.name = name }
//        var apartment: Apartment?
//        deinit { print("\(name) is being deinitialized") }
//    }
//    
//    class Apartment {
//        let unit: String
//        init(unit: String) { self.unit = unit }
//        weak var tenant: Person?
//        deinit { print("Apartment \(unit) is being deinitialized") }
//    }
//    
//    
//    
//    
//    
//    var john: Person?
//    var unit4A: Apartment?
//    
//    john = Person(name: "John Appleseed")
//    unit4A = Apartment(unit: "4A")
//    
//    john!.apartment = unit4A
//    unit4A!.tenant = john
//    
//    
//    
//    
//    
//    john = nil
//    // Prints "John Appleseed is being deinitialized"
//    
//    
//    
//    
//    
//    unit4A = nil
//    // Prints "Apartment 4A is being deinitialized"
//
//}
//
//class UnownedReferences {
//    class Customer {
//        let name: String
//        var card: CreditCard?
//        init(name: String) {
//            self.name = name
//        }
//        deinit { print("\(name) is being deinitialized") }
//    }
//    
//    class CreditCard {
//        let number: UInt64
//        unowned let customer: Customer
//        init(number: UInt64, customer: Customer) {
//            self.number = number
//            self.customer = customer
//        }
//        deinit { print("Card #\(number) is being deinitialized") }
//    }
//    
//    
//    
//    
//    var john: Customer?
//    
//    
//    
//    
//    
//    john = Customer(name: "John Appleseed")
//    john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
//    
//    
//    
//    
//    
//    john = nil
//    // Prints "John Appleseed is being deinitialized"
//    // Prints "Card #1234567890123456 is being deinitialized"
//}
//
//
//class UnownedReferencesAndImplicitlyUnwrappedOptinalProperties {
//    
//    class Country {
//        let name: String
//        var capitalCity: City!
//        init(name: String, capitalName: String) {
//            self.name = name
//            self.capitalCity = City(name: capitalName, country: self)
//        }
//    }
//    
//    class City {
//        let name: String
//        unowned let country: Country
//        init(name: String, country: Country) {
//            self.name = name
//            self.country = country
//        }
//    }
//    
//    
//    
//    
//    
//    var country = Country(name: "Canada", capitalName: "Ottawa")
//    print("\(country.name)'s capital city is called \(country.capitalCity.name)")
//    // Prints "Canada's capital city is called Ottawa"
//}
