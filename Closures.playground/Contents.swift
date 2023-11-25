import Cocoa

let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//func isAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}

//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

let volunteersSorted = volunteerCounts.sorted{ $0 < $1 }

print("\(volunteerCounts)")
print("\(volunteersSorted)")

func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    return result
}

var numberOfTransformations = 0

let rounder: (Double) -> String = {
    (num: Double) -> String in
    numberOfTransformations += 1
    return "\(Int(num.rounded()))"
}

let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveragesAsStrings = format(numbers: volunteerAverages, using: rounder)
let exactAveragesAsStrings = format(numbers: volunteerAverages)

print(numberOfTransformations)

let roundedAverages = volunteerAverages.map {
    (avg: Double) -> Int in
    return Int(avg.rounded())
}

let passingAverages = roundedAverages.filter {
    (avg: Int) -> Bool in
    return avg >= 10
}
