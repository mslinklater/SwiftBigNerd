//
//  Town.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

struct Town {
    static let world = "Earth"
    
    let region = "Middle"
    var population = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)")
                mayor.reducedPoulation()
            }
        }
    }
    var numberOfStopLights = 4
    var mayor = Mayor()
    
    enum Size {
        case small
        case medium
        case large
    }

    var townSize: Size {
        switch population {
        case 0...10000:
            return Size.small
        case 10001...100000:
            return Size.medium
        default:
            return Size.large
        }
    }
    
    func printDescription() {
        print("population \(myTown.population) number of stop lights \(myTown.numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

