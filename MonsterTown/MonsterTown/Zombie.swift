//
//  Zombie.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

class Zombie: Monster {

    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    private(set) var isFallingApart: Bool = false

    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
        regenerate()
    }    
}
