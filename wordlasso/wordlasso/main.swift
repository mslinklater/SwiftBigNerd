//
//  main.swift
//  wordlasso
//
//  Created by Martin Linklater on 30/01/2024.
//

import Foundation

struct Wordlasso {
    func run() throws {
        let wordList = ["Wolf", "wolf", "word", "works", "woo"]
        let wordFinder = WordFinder(wordList: wordList)
        
        let template = "wo.."
        
        let matches = wordFinder.findMatches(for: template)
        print("Found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
        for match in matches {
            print(match)
        }
    }
}

var wordlasso = Wordlasso()

do {
    try wordlasso.run()
} catch {
    fatalError("Program exited unexpectedly \(error)")
}
