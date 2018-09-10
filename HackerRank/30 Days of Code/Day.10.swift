//Day 10: Binary Numbers
import Foundation

let input = Int(readLine()!)!
let str = String(input, radix: 2)
var out: [String] = str.components(separatedBy: "0")

var output = out.sorted { $0 > $1}
print(output[0].characters.count)
