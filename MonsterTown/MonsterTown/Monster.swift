//
//  Monster.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

class Monster {
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    static let isTerrifying = true
    
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    var town: Town?
    var name: String
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet")
        }
    }
}
