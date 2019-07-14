/*
 Properties
 
 Exercises
 */

import UIKit


struct Person {
    
    var clothes: String {
        willSet {
            updateUI(msg: "I am changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-Shirts")
taylor.clothes = "Jumpers"
