// Factorial recursion

import Foundation

func factorial(ofNum num: Int) -> Int {
    if num <= 1 {
        return num
    }
    
    return num * factorial(ofNum: num - 1)
}

print(factorial(ofNum: 10))
