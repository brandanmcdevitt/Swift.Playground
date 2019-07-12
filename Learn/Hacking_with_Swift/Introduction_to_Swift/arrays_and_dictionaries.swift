/*
 Arrays and Dictionaries
 
 Exercises
 */

import UIKit

var evenNumbers = [2, 4, 6, 8, 10]
var personDetails = ["Firstname": "Peter", "Surname": "Davidson", "Birthday": "22nd July 1992"]

// 1. Write a Swift program to compute the sum of all the elements of a given array of integers and length
print(evenNumbers.reduce(0, +))


// 2. Write a Swift program to create a new array with the elements in reverse order of a given array of integers.
print(Array(evenNumbers.reversed()))


// 3. Write a Swift program to test if an array of integers contains a 3 or a 5
if evenNumbers.contains(3) && evenNumbers.contains(5) {
    print("Array contains both elements 3 and 5.")
} else {
    print("Both elements not found within the array.")
}


// 4. Alter the data within the dictionary
personDetails["Surname"] = "Jackson"


// 5. Loop through the dictionary and print the keys and values
for (key, value) in personDetails {
    print(key + ": " + value)
}


// 6. Print only the keys from the dictionary
print(personDetails.keys)
