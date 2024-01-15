import Cocoa

extension Double {
    var squared: Double { return self * self }
}

let sideLength: Double = 12.5
let area = sideLength.squared

struct Car {
    let make: String
    let model: String
    let year: Int
    var fuelLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1")
        }
    }
}

let firstCar = Car(make: "Benz", model: "Patent-Motorwagon", year: 1886, fuelLevel: 0.5)

extension Car: CustomStringConvertible {
    var description: String {
        return "\(year) \(make) \(model), fuel level \(fuelLevel)"
    }
}

extension Car {
    init(make: String, model: String, year: Int) {
        self.init(make: make, model: model, year: year, fuelLevel: 1.0)
    }
}

var currentCar = Car(make: "Honda", model: "Civic", year: 2008)

firstCar.fuelLevel
currentCar.fuelLevel

extension Car {
    enum Era {
        case veteran, brass, vintage, modern
    }
    var era: Era {
        switch year {
        case ...1896:
            return .veteran
        case 1897...1919:
            return .brass
        case 1920...1930:
            return .vintage
        default:
            return .modern
        }
    }
}
firstCar.era

extension Car {
    mutating func emptyFuel(by amount: Double) {
        precondition(amount <= 1.0 && amount > 0.0, "Amount to remove must be between 0 and 1.")
        fuelLevel -= amount
    }
    
    mutating func fillFuel() {
        fuelLevel = 1.0
    }
}

currentCar.emptyFuel(by: 0.3)
currentCar.fuelLevel
currentCar.fillFuel()
currentCar.fuelLevel
