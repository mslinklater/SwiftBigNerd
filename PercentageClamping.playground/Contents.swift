import Foundation

struct Car {
    @Percentage var fuelLevel: Double = 1.0
    @Percentage var wiperFluidLevel: Double = 0.5
    @Percentage(upperBound: 2.0) var stereoVolume: Double = 2
}

extension Car: CustomStringConvertible {
    var description: String {
        return "fuel level: \(fuelLevel), wrapped by \(_fuelLevel)"
    }
}

var myCar = Car()
print(myCar)
myCar.fuelLevel = 1.1
myCar.stereoVolume = 2.5
print(myCar)
print("Fuel: ", myCar.fuelLevel)
print("Wiper fluid: ", myCar.wiperFluidLevel)
print("Stereo volume: ", myCar.stereoVolume)
print("Projected volume: ", myCar.$stereoVolume)
