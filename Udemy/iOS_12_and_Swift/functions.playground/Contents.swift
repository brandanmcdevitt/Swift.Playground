// Functions exercise

import UIKit

func getMilk(milkCartons: Int, robotsMoney: Int) -> Int {
    print("Go to the shops.")
    print("Buy \(milkCartons) cartons of milk.")
    
    let priceToPay = milkCartons * 2
    
    print("Pay £\(priceToPay).")
    print("Come home.")
    
    let change = robotsMoney - priceToPay
    
    return change
}


let amountOfChange = getMilk(milkCartons: 4, robotsMoney: 12)

print("Hello Master. Here is your £\(amountOfChange) change.")
