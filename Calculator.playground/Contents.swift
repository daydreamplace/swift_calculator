import Foundation

class AddOperation {
    func calculate(_ a: Double, _ b: Double) -> Double{
        return a + b
    }
}

class SubstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double{
        return a - b
    }
}

class MultiplyOperation {
    func calculate(_ a: Double, _ b: Double) -> Double{
        return a * b
    }
}

class DivideOperation {
    func calculate(_ a: Double, _ b: Double) -> Double? {
        return b != 0 ? a / b : nil
    }
}

class RemainderOperation {
    func calculate(_ a: Double, _ b: Double) -> Double? {
        return b != 0 ? a.truncatingRemainder(dividingBy: b) : nil
    }
}

class Calculator {
    private let addOperation = AddOperation()
    private let subtractOperation = SubstractOperation()
    private let multiplyOperation = MultiplyOperation()
    private let divideOperation = DivideOperation()
    private let remainderOperation = RemainderOperation()
    
    func add(_ a: Double, _ b: Double) -> Double{
        return addOperation.calculate(a, b)
    }
    func substract(_ a: Double,_ b: Double) -> Double {
        return subtractOperation.calculate(a, b)
    }
    func multiply(_ a: Double, _ b: Double) -> Double {
        return multiplyOperation.calculate(a, b)
    }
    func divide(_ a: Double, _ b: Double) -> Double? {
        return divideOperation.calculate(a, b)
    }
    func remainder(_ a: Double, _ b: Double) -> Double? {
        return remainderOperation.calculate(a, b)
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
