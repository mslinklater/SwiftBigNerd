import Cocoa

var movieRatings = ["Tron": 4, "War Games": 5, "Sneakers": 4]

movieRatings.count

let tronRating = movieRatings["Tron"]

movieRatings["Sneakers"] = 5

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")

if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}

movieRatings["Hackers"] = 5
movieRatings["Sneakers"] = nil

for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

for movie in movieRatings.keys {
    print("User has rated \(movie)")
}
