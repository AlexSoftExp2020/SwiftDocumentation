//
//  ConstantsAndVariables.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 15.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - CONSTANTS AND VARIABLES

class ConstantsAndVariables: XCTestCase {
    
    //Declaring Constants and Variables
    let maximumNumberOfLoginAttempts = 10
    var currentLoginAttempt = 0
    
    var x = 0.0, y = 0.0, z = 0.0
    
    //Type Annotations
    func test_TypeAnnotations() {
        var velcomeMessage: String?
        velcomeMessage = "Hello"
        var red, green, blue: Double
    }
    
    //Naming Constants and Variables
    func test_NamingConstantsAndVariables() {
        
        let π = 3.14159
                print(π)
                let 你好 = "你好世界"
                print(你好)
                let 🐶🐮 = "dogcow"
                print(🐶🐮)
                
                var friendlyWelcome = "Hello!"
                friendlyWelcome = "Bonjour!"
                print(friendlyWelcome)
                
        //        let languageName = "Swift"
        //        languageName = "Swift++" // This is a compile-time error: languageName cannot be changed.
    }
    
    //Printing Constants and Variables
    func test_PrintingConstantsAndVariables() {
        var friendlyWelcome = "Hello!"
        friendlyWelcome = "Bonjour!"
        
        print(friendlyWelcome)
        
        print("The current value of friendlyWelcome is \(friendlyWelcome)")
    }

}
