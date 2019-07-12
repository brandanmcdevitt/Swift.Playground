/*
 Loops and Switches
 
 Exercises
 */

import UIKit

var numArray = [Int]()
var count = 1
let bookRating = 8


// 1. Create a loop that appends the numbers from 1 to 100 into an array
for i in 1...100 {
    numArray.append(i)
}

print(numArray)



// 2. Create a loop that runs until broken
while true {
    if count == 50 {
        break
    } else {
        print("\(count) Looping")
        count += 1
    }
    
}


// 3. Create a switch with multiple cases
switch bookRating {
case 0...3:
    print("This book received a poor rating.")
case 4...6:
    print("This book received an average reating.")
case 7...10:
    print("This book received an excellent rating!")
default:
    print("This book is yet to be rated.")
}
