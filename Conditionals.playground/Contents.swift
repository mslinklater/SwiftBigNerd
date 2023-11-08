import Cocoa

let population: Int = 5622
let message: String
let hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town"
} else {
    message = "\(population) is pretty big"
}

print(message)

if hasPostOffice {
    print("Where do we buy stamps ?")
}
