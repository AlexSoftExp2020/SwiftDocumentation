//
//  StrongReferenceCyclesForClosures.swift
//  AutomaticReferenceCounting
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class StrongReferenceCyclesForClosures: XCTestCase {

    

}

//class StrongReferenceCyclesForClosures {
//    
//    class HTMLElement {
//        
//        let name: String
//        let text: String?
//        
//        lazy var asHTML: () -> String = {
//            if let text = self.text {
//                return "<\(self.name)>\(text)</\(self.name)>"
//            } else {
//                return "<\(self.name) />"
//            }
//        }
//        
//        init(name: String, text: String? = nil) {
//            self.name = name
//            self.text = text
//        }
//        
//        deinit {
//            print("\(name) is being deinitialized")
//        }
//        
//    }
//    
//    
//    
//    
//    
//    let heading = HTMLElement(name: "h1")
//    let defaultText = "some default text"
//    heading.asHTML = {
//    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
//    }
//    print(heading.asHTML())
//    // Prints "<h1>some default text</h1>"
//    
//    
//    
//    
//    
//    
//    var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
//    print(paragraph!.asHTML())
//    // Prints "<p>hello, world</p>"
//    
//    
//    
//    
//    
//    paragraph = nil
//}
