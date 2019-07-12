/*
 Functions
 
 Exercises
 */

import UIKit


// 1. Create a basic function that takes in an integer and multiplies it by 32
func multiplyBy32(num: Int) {
    print(num * 32)
}

multiplyBy32(num: 7)


// 2. Write a function that takes in a word and returns an array with the word split by character
func addSpacesToWord(word: String) -> Array<Character> {
    return Array(word)
}

print(addSpacesToWord(word: "Hello"))
