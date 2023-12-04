//
//  main.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

var myTown = Town(population: 0, stopLights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
myTown?.changePopulation(by: 500)

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: true)

print("Town size \(String(describing: myTown?.townSize))")
myTown?.changePopulation(by: 1000000)
print("Town size \(String(describing: myTown?.townSize))")

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500
print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil

/// for the more curious

let names = ["Almasi", "Harris", "Jun", "Kala"]
print("----")
print("names \(names)")
let firstLetters = names.compactMap({$0.first})
print("firstLetters \(firstLetters)")
let firstLetters2 = names.compactMap(\.first)
print("firstLetters2 \(firstLetters2)")
