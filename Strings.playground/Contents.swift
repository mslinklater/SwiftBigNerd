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

extension String {
    func indicesOf(string: String) -> [Int] {
        var indices = [Int]()
        var searchStartIndex = self.startIndex

        while searchStartIndex < self.endIndex,
            let range = self.range(of: string, range: searchStartIndex..<self.endIndex),
            !range.isEmpty
        {
            let index = distance(from: self.startIndex, to: range.lowerBound)
            indices.append(index)
            searchStartIndex = range.upperBound
        }

        return indices
    }
}

let keyword = "abc"
let html = "abcaaabc"
let indicies = html.indicesOf(string: keyword)
print(indicies) // [0, 1, 2, 3]
