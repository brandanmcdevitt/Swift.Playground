//closures part two

//using closures as parameters when they accept parameters
func travelAgain(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived")
}
travelAgain { (place: String) in
    print("I'm driving to \(place) in my car")
}
//using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
//shorthand parameter names
travel {
    "I'm going to \($0) in my car"
}
//closures with multiple parameters
func travelWithSpeed(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travelWithSpeed {
    "I'm driving to \($0) at \($1) miles per hour"
}
//returning closures from functions
func travelYetAgain() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter): I'm going to \($0)")
        counter += 1
    }
}
let result = travelYetAgain()
result("London")
//capturing values
result("London")
result("London")
