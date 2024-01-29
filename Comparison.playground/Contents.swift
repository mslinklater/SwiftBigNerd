import Foundation

struct Point {
    let x: Int
    let y: Int
    let label: String? = nil
    
}

extension Point : Comparable, Hashable {
    static func ==(lhs:Point, rhs:Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y) && (lhs.label == rhs.label)
    }
    
    static func <(lhs:Point, rhs:Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)
let abEqual = (a == b)
let abNotEqual = (a != b)

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)
let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)
let pointRange = c..<d
pointRange.contains(a)
pointRange.contains(Point(x: -1, y: -1))

let points: Set = [a, b, c]
points.intersection([b, c, d])

let pointNames: [Point:String] = [
    Point(x: 0, y: 0): "origin",
    a: "a"
]
