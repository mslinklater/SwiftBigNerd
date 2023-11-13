import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreeting(to name: String) {
    print("Hello, \(name). Welcome to your playground.")
}

printPersonalGreeting(to: "Martin")

func divisionDescriptionFor(numerator: Double, 
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String {
    return("\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)")
}
print(divisionDescriptionFor(numerator: 9.0, 
                             denominator: 3.0))
print(divisionDescriptionFor(numerator: 9.0, 
                             denominator: 3.0,
                             withPunctuation: "!"))

var error = "The request failed"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}

appendErrorCode(400, toErrorString: &error)
print(error)

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let rectangle = base * height
    func divide() -> Double {
        return rectangle / 2
    }
    return divide()
}
print(areaOfTriangleWith(base: 3.0, height: 5.0))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens) the odd numbers are \(theSortedNumbers.odds)")
