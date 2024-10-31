import Foundation

class Calculator {
    func add(a: Double, b: Double) -> Double{
        return a + b
    }
    func substract(a: Double, b: Double) -> Double {
        return a - b
    }
    func multiply(a: Double, b: Double) -> Double {
        return a * b
    }
    func divide(a:Double, b: Double) -> Double? {
        if b != 0 {
            return a / b
        } else {
            return nil
        }
    }
}
