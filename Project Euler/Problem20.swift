/*
 Problem 20
 -----------
 n! means n × (n − 1) × ... × 3 × 2 × 1
 
 For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
 and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
 
 Find the sum of the digits in the number 100!
 -----------
 */

import Foundation

func carryAll(_ arr: [Int]) -> [Int] {
    var result = [Int]()
    
    var carry = 0
    for val in arr.reversed() {
        let total = val + carry
        let digit = total % 10
        carry = total / 10
        result.append(digit)
    }
    
    while carry > 0 {
        let digit = carry % 10
        carry = carry / 10
        result.append(digit)
    }
    
    return result.reversed()
}

func factorial(value: Int) -> String {
    var result = [1]
    var sum = 0
    for i in 2...value {
        result = result.map { $0 * i }
        result = carryAll(result)
    }
    
    let intResult = result.map { Int($0)}
    
    for number in intResult {
        sum = sum + number
    }
    
    print("The sum is: \(sum)")
    return result.map(String.init).joined()
}

factorial(value: 100)
/*
 Big thanks to vacawama @ stackoverflow for guidance on how to handle huge integers
 https://stackoverflow.com/questions/43830151/swift-3-calculate-factorial-number-result-becomes-too-high/43830823#43830823
 */

//commented code beneath works up until getting the sum of the factorial due to loss of precision

//var result : Double = 0
//var sum = 0
//
////recursion to get the factorial of a value
//func fact(value : Double) -> Double {
//    if value == 1 {
//        return 1
//    } else {
//        result = fact(value: value - 1) * value
//        return result
//    }
//}
//
//fact(value: 100)
////adding each digit from the int 'result' to an array 'digits'
//var digits = Array(String(result)).map{Int(strtoul((String($0)),nil,16))}
////for each digit in digits, get the sum
//for digit in digits {
//    sum = sum + digit
//}
//
//print("The sum is: \(sum)")
