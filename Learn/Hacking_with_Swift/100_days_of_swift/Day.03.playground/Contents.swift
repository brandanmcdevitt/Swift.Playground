//operators and conditions

//arithmetic operators
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore
//operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
//compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
//comparison operators
let thirdScore = 6
let fourthScore = 4
thirdScore == fourthScore
thirdScore != fourthScore
thirdScore < fourthScore
thirdScore >= fourthScore
"Taylor" <= "Swift"
//conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces - Lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
//combining conditions
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("One is over 18")
}
//the ternary operator
let thirdCard = 11
let fourthCard = 10
print(thirdCard == fourthCard ? "Cards are the same" : "Cards are different")
//switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Have a nice day")
}
//range operators
let newScore = 85
switch score {
case 0..<50:
    print("You failed badly")
case 0..<85:
    print("You did OK")
default:
    print("You did great!")
}
