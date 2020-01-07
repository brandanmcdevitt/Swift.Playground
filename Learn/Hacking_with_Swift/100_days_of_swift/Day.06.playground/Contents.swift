//closures part one

//creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()
//accepting parameters in a closure
let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingTo("London")
//returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)
//closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}
travel(action: driving)
//trailing closure syntax
travel {
    print("I'm driving in my car")
}
