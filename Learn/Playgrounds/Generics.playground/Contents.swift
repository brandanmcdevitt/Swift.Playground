struct Queue<T> {
    private var internalArray = [T]()
    
    var count: Int {
        return internalArray.count
    }
    
    mutating func add(_ item: T) {
        internalArray.append(item)
    }
    
    mutating func remove() -> T? {
        if internalArray.count > 0 {
            return internalArray.removeFirst()
        } else {
            return nil
        }
    }
}

struct PreOrderFulfillment {
    private var queue = Queue<Int>()
    var availability = 100

    mutating func acceptOrder(quantity: Int) -> Bool {
        if quantity > 2 {
            print("Sorry you have reached the maximum limit for pre-order")
            return false
        } else {
            queue.add(quantity)
            availability -= quantity
            return true
        }
    }
    
    mutating func processOrder() {
        queue.remove()
    }
}

var customerQueue = 150
var preOrder = PreOrderFulfillment()

while preOrder.availability > 0 {
    let quantity = Int.random(in: 1...4)
    
    print("Current pre-order availability: \(preOrder.availability)")
    
    guard preOrder.acceptOrder(quantity: quantity) else { continue }
    preOrder.processOrder()
}

