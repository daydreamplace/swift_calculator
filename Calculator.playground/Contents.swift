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

let calculator = Calculator()

let addResult = calculator.add(a: 5, b: 3)
print(addResult)

let substractResult = calculator.substract(a: 5, b: 3)
print(substractResult)

let multiplyResult = calculator.multiply(a: 5, b: 3)
print(multiplyResult)

if let divideResult = calculator.divide(a: 5, b: 0) {
    print(divideResult)
} else {
    print("0으로 나눔")
}
