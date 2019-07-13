/*
 Structs
 
 Exercises
 */

import UIKit


struct Person {
    var age: Int
    var hobby: String
    
    func describe() {
        print("I am \(age) years old and I enjoy \(hobby.lowercased())")
    }
    
}

let mike = Person(age: 21, hobby: "Reading")
let joan = Person(age: 47, hobby: "Gardening")

mike.describe()
