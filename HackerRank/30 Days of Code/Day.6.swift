//Day 6: Let's Review

import Foundation
import Darwin

let numStrings = Int(readLine()!)!
var even = [Character]()
var odd = [Character]()

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    let input = Array(string)
    
    for i in 0..<input.count {
        if input.index(after: i-1) % 2 == 0 {
            even.append(input[i])
        } else {
            odd.append(input[i])
        }
    }
    
    print(String(even) + " " + String(odd))
    even.removeAll()
    odd.removeAll()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

