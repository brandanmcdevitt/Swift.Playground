//Day 2: Operators

// Enter your code here. Read input from STDIN. Print output to STDOUT
import Darwin

var mealCost = Double(readLine()!)
var tipPercent = readLine()!
var taxPercent = readLine()!

let tip = mealCost! * Double(tipPercent)!/100
let tax = mealCost! * Double(taxPercent)!/100

var totalCost = mealCost! + tip + tax

print("The total meal cost is \(Int(round(totalCost))) dollars.")

