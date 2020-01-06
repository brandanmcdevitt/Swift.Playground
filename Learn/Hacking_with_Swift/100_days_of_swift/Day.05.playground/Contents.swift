//functions, parameters, and errors

//writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()
//accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)
//returning values
func squareWithReturn(number: Int) -> Int {
    return number * number
}
let result = squareWithReturn(number: 8)
print(result)
//parameter labels
func sayHello(to name: String) {
    print("Hello \(name)!")
}
sayHello(to: "Taylor")
//omitting parameter labels
func greet(_ person: String) {
    print("Hello \(person)!")
}
greet("Taylor")
//default parameters
func greetWithDefault(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greetWithDefault("Taylor")
greetWithDefault("Taylor", nicely: false)
//variadic functions
func squareWithVariadic(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
squareWithVariadic(numbers: 1, 2, 3, 4, 5)
//writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
//running throwing functions
do {
    try checkPassword("password")
    print("That's a good password")
} catch {
    print("You can't use that password")
}
//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
