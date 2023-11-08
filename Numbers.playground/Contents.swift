import Cocoa

print("The maximum value for Int is \(Int.max)")
print("The minimum value for Int is \(Int.min)")

print("The maximum value for Int32 is \(Int32.max)")
print("The minimum value for Int32 is \(Int32.min)")

print("The maximum value for UInt is \(UInt.max)")
print("The minimum value for UInt is \(UInt.min)")

print("The maximum value for UInt32 is \(UInt32.max)")
print("The minimum value for UInt32 is \(UInt32.min)")

let a: Int16 = 100
let b: Int8 = 56
var c = a + Int16(b)

let ticketCount = 1000
let range = 1 ... ticketCount
let range2 = 1 ..< ticketCount
