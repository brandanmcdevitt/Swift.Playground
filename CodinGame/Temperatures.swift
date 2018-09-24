import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var pos = 5526 //highest positive temperature (max)
var neg = 273 //lowest negative temperature (min)
let n = Int(readLine()!)! // the number of temperatures to analyse

//if there are no temperatures print zero
if n == 0 {
    print(0)
} else if n == 1 {
    let i = Int(readLine()!)!
    
    if i == pos {
        print(pos)
    } else if abs(i) == neg {
        print("-\(neg)")
    }
} else {
    for i in ((readLine()!).characters.split{$0 == " "}.map(String.init)) {
        let t = Int(i)!
        //if t is less than 0 and absolute t is less than absolute neg
        if t < 0 && abs(t) <= abs(neg) {
            neg = t
        //else if absolute t is less than pos
        } else if abs(t) <= pos {
            pos = abs(t)
        } 
    }
    //if absolute pos is equal to absolute neg
    if abs(pos) == abs(neg) {
    print(pos)
    } else if abs(pos) < abs(neg) {
        print(pos)
    } else if abs(neg) < abs(pos) {
        print(neg)
    }
}
