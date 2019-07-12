/*
 Optionals
 
 Exercises
 */

import UIKit


// 1. create a function that returns an optional value and unwrap the optional to check for a value
func yearOfAlbumRelease(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }
    return nil
}

if let year = yearOfAlbumRelease(name: "Red") {
    print("Year: \(year)")
} else {
    print("Sorry, that album does not exist.")
}


// 2. Make use of optional chaining with the function above
let album = yearOfAlbumRelease(name: "1989")?.isMultiple(of: 2)


// 3. Make use of the nil coalescing operator
let albumInfo = yearOfAlbumRelease(name: "Tay Swifty") ?? 0
