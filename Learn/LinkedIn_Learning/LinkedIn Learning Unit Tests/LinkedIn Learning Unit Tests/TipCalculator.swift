import Foundation

class TipCalculator {
    var defaultPercentage = 75.0
    
    func calculateTip(amount: Double, percentage: Double) -> Double {
        return amount * percentage / 100
    }
}
