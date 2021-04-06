//
//  ClassInheritanceAndInitialization.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ClassInheritanceAndInitialization: XCTestCase {

}

class SyntaxForDesignatedAndConvenienceInitializers: XCTestCase {
    
    /*
     init(parameters) {
     statements
     }
     
     convenience init(parameters) {
     statements
     }

     */
    
}

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

class InitializerInheritanceAndOverriding: XCTestCase {
    
    
    let vehicle = Vehicle()
    func testExecution() {
        
        print("Vehicle: \(vehicle.description)")
        // Vehicle: 0 wheel(s)
    }
    
    class Bicycle: Vehicle {
        override init() {
            super.init()
            numberOfWheels = 2
        }
    }
    
    
    
    
    let bicycle = Bicycle()
    func testExecution2() {
        print("Bicycle: \(bicycle.description)")
        // Bicycle: 2 wheel(s)
    }
    
    class Hoverboard: Vehicle {
        var color: String
        init(color: String) {
            self.color = color
            // super.init() implicitly called here
        }
        override var description: String {
            return "\(super.description) in a beautiful \(color)"
        }
    }
    
    
    
    
    
    let hoverboard = Hoverboard(color: "silver")
    func testExecution3() {
        print("Hoverboard: \(hoverboard.description)")
        // Hoverboard: 0 wheel(s) in a beautiful silver
    }
}


class DesignatedAndConvenienceInitializersInAction: XCTestCase {
    
    class Food {
        var name: String
        init(name: String) {
            self.name = name
        }
        convenience init() {
            self.init(name: "[Unnamed]")
        }
    }
    
    
    
    
    let namedMeat = Food(name: "Bacon")
    // namedMeat's name is "Bacon"
    
    
    
    
    let mysteryMeat = Food()
    // mysteryMeat's name is "[Unnamed]"
    
    
    
    
    class RecipeIngredient: Food {
        var quantity: Int
        init(name: String, quantity: Int) {
            self.quantity = quantity
            super.init(name: name)
        }
        override convenience init(name: String) {
            self.init(name: name, quantity: 1)
        }
    }
    
    
    
    
    let oneMysteryItem = RecipeIngredient()
    let oneBacon = RecipeIngredient(name: "Bacon")
    let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
    
    
    class ShoppingListItem: RecipeIngredient {
        var purchased = false
        var description: String {
            var output = "\(quantity) x \(name)"
            output += purchased ? " ✔" : " ✘"
            return output
        }
    }
    
    var breakfastList = [
        ShoppingListItem(),
        ShoppingListItem(name: "Bacon"),
        ShoppingListItem(name: "Eggs", quantity: 6),
        ]
    
    func testExecution() {
        breakfastList[0].name = "Orange juice"
        breakfastList[0].purchased = true
        for item in breakfastList {
        print(item.description)
        }
        // 1 x Orange juice ✔
        // 1 x Bacon ✘
        // 6 x Eggs ✘
    }
}
