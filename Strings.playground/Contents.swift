import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"

mutablePlayground += "!"

let quote = "I wanted to \"say\":\n\(playground)"
print(quote)

for c: Character in mutablePlayground {
    print("'\(c)'")
}
let snowman = "\u{2603}"
let aAcute = "\u{0061}\u{0301}"

for scalar in mutablePlayground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00e1}"
