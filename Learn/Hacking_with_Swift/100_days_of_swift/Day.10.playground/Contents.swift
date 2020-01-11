//classes and inheritance

//creating your own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
    
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
//class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}
//overriding methods
let trevor = Poodle(name: "Trevor")
trevor.makeNoise()
//final classes
final class NewDog {
    func thisCantBeOverridden() {
        print("Final classes cannot have their methods overridden")
    }
}
//copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Ed Sheeran"
print(singer.name)
//deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }
    
    func printGreeting() {
        print("Hi, my name is \(name)")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
//mutability
class NewSinger {
    //use let to make unmutable
    let name = "Taylor Swift"
}
let taylor = NewSinger()
// taylor.name = "Ed Sheeran" - can't mutate now
