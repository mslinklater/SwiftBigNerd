import Cocoa

enum TextAlignment: Int {
    case left       = 20
    case right      = 30
    case center     = 40
    case justified  = 50
}

var alignment = TextAlignment.left
alignment = .right

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justified:
    print("justified")
}

let myRawValue = 20

if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("Seccessfully created \(myAlignment) from \(myRawValue)")
} else {
    print("\(myRawValue) has no corresponding TextAlignment value")
}

enum ProgrammingLanguage: String {
    case swift  = "Swift"
    case objectiveC = "Objective-C"
    case c = "C"
    case cpp = "C++"
    case java = "J"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum LightBulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area is \(squareShape.area())")
print("rectangle's area is \(rectShape.area())")
print("point's area is \(pointShape.area())")
