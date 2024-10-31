import Foundation

class Calculator {
    func add(_ a: Double, _ b: Double) -> Double{
        return a + b
    }
    func substract(_ a: Double,_ b: Double) -> Double {
        return a - b
    }
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    func divide(_ a: Double, _ b: Double) -> Double? {
        return b != 0 ? a / b : nil
    }
    func remainder(_ a: Double, _ b: Double) -> Double? {
        return b != 0 ? a.truncatingRemainder(dividingBy: b) : nil
    }
}

let calculator = Calculator()

let addResult = calculator.add(5, 3)
print(addResult)

let substractResult = calculator.substract(5, 3)
print(substractResult)

let multiplyResult = calculator.multiply(5, 3)
print(multiplyResult)

if let divideResult = calculator.divide(5, 3) {
    print(divideResult)
} else {
    print("0으로 나눔")
}

if let remainderResult = calculator.remainder(1.56, 2) {
    print(remainderResult)
} else {
    print("0으로 나눔")
}
