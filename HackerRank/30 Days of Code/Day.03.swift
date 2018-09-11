//Day 3: Intro to conditional statements

import Foundation

// Enter your code here
var n = Int(readLine()!)
var ans : String = ""

if(n! % 2 == 0 && (n!<6 || n!>20) ) {
    ans += "Not "
}

ans += "Weird"
print(ans)
