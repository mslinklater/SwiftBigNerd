//
//  main.swift
//  CyclicAssets
//
//  Created by Martin Linklater on 27/01/2024.
//

import Foundation

class Simulation {
    func run() {
        let vault13 = Vault(number: 13)
        print("Created \(vault13)")
        
        let coin: Asset = Asset(name: "Rare coin", value: 1000.0)
        let gem: Asset = Asset(name: "Big diamond", value: 5000.0)
        let poem: Asset = Asset(name: "Magnum opus", value: 0.0)
        
        vault13.store(coin)
        vault13.store(gem)
        print("Created some assets: \([coin, gem, poem])")
        coin.value += 137
        print("-- deallocations --")
    }
}

let simulation = Simulation()
simulation.run()
//dispatchMain()
