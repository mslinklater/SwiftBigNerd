//
//  Town.swift
//  MonsterTown
//
//  Created by Martin Linklater on 22/11/2023.
//

import Foundation

struct Town {
    static let world = "Earth"
    
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)")
                mayor.reducedPoulation()
            }
        }
    }
    var numberOfStopLights: Int
    var mayor = Mayor()
    
    init?(region: String, population: Int, stopLights: Int) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        self.numberOfStopLights = stopLights
    }

    init?(population: Int, stopLights: Int) {
        self.init(region: "N/A", population: population, stopLights: stopLights)
    }

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
        print("region \(region) population \(population) number of stop lights \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

