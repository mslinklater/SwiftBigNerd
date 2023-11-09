import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreeting(name: String) {
    print("Hello, \(name). Welcome to your playground.")
}

printPersonalGreeting(name: "Martin")

func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) is \(numerator / denominator)")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
