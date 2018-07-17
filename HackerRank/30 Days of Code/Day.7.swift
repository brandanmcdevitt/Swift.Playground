//Day 7: Arrays

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array
let array = readLine()!.components(separatedBy: " ")

for char in array.reversed() {
    print(char, terminator: " ")
}
print()
