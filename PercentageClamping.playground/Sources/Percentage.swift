import Foundation

@propertyWrapper public struct Percentage {
    private var storage: Double
    private var upperBound: Double
    
    public init(wrappedValue: Double, upperBound: Double = 1) {
        self.storage = wrappedValue
        self.upperBound = upperBound
    }
    
    public var wrappedValue: Double {
        set {
            storage = newValue
        }
        get {
            return max(min(storage, upperBound), 0)
        }
    }
    
    public var projectedValue: Double {
        get {
            return storage
        }
    }
}
