//arrays, dictionaries, sets, and enums

//strings
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
//array of strings
let beatles = [john, paul, george, ringo]
//accessing items within an array
beatles[1]
//sets
let colours = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])
//tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first
//arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73]
heights["Taylor Swift"]
//dictionary default values
let favouriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"]
favouriteIceCream["Paul"]
favouriteIceCream["Charlotte", default: "Unknown"]
//Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()
//enums
enum Result {
    case success
    case failure
}
let results3 = Result.failure
//enum associated values
enum Activity {
    case bored
    case talking(topic: String)
    case running(destination: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "Football")
//enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3)
