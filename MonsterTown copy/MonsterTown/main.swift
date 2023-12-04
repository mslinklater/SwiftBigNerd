//
//  main.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

var myTown = Town()
var yourTown = myTown
myTown.changePopulation(by: 500)
print("myTown has \(myTown.population) and yourTown has \(yourTown.population)")

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Town size \(myTown.townSize)")
myTown.changePopulation(by: 1000000)
print("Town size \(myTown.townSize)")

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

/// for the more curious

let names = ["Almasi", "Harris", "Jun", "Kala"]
print("----")
print("names \(names)")
let firstLetters = names.compactMap({$0.first})
print("firstLetters \(firstLetters)")
let firstLetters2 = names.compactMap(\.first)
print("firstLetters2 \(firstLetters2)")
