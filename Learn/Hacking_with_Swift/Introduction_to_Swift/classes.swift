/*
 Classes
 
 Exercises
 */

import UIKit


class Animal {
    var type: String
    
    init(type: String) {
        self.type = type
    }
    
    func describe() {
        print("This animal is of type \(type)")
    }
}

class Dog: Animal {
    var name: String
    
    init(name: String, type: String) {
        self.name = name
        super.init(type: type)
    }
    
    override func describe() {
        print("This \(name) is of type \(type)")
    }
}

let dog = Dog(name: "dog", type: "mammal")

dog.describe()
