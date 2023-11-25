//
//  Mayor.swift
//  MonsterTown
//
//  Created by Martin Linklater on 25/11/2023.
//

import Foundation

struct Mayor {
    
    private var anxietyLevel = 0
    
    mutating func reducedPoulation() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
        anxietyLevel -= 1
    }
}
