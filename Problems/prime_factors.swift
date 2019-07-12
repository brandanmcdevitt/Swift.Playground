/*
 Problem 3
 -----------
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 -----------
 */

import Foundation

//starting with the smallest possible prime number
var prime = 2
//the number that I am aiming to factor
var numberToFactor = 600851475143

while numberToFactor > 1 {
    //if the numberToFactor is divisible by the current prime number and leaves us with a whole number
    if numberToFactor % prime == 0 {
        //then divide our numberToFactor by our current prime number to get the a list of the prime factors
        numberToFactor = numberToFactor / prime
    } else {
        //else add 1 to our prime number count
        prime += 1
    }
}
//print the largest prime factor from our loop
print("The largest prime factor is: \(prime)")
