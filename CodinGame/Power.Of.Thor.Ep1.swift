import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).characters.split{$0 == " "}.map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTX = Int(inputs[2])! // Thor's starting X position
let initialTY = Int(inputs[3])! // Thor's starting Y position

var x = initialTX //thors x position, easier to type
var y = initialTY //thors y position, easier to type

// game loop
while true {
    let remainingTurns = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.
    
    
    if x < lightX && y > lightY {
        x += 1
        y -= 1
        print("NE") //move north-east
    } else if x > lightX && y > lightY {
        x -= 1
        y -= 1
        print("NW") //move north-west
    }else if x < lightX && y < lightY {
        x += 1
        y += 1
        print("SE") //move south-east
    } else if x > lightX && y < lightY {
        x -= 1
        y += 1
        print("SW") //move south-west
    } else if y > lightY {
        y -= 1
        print("N") //move north
    } else if x < lightX {
        x -= 1
        print("E") //move east
    } else if y < lightY {
        y += 1
        print("S") //move south
    } else if x > lightX {
        x -= 1
        print("W") //move west
    }
}
