//
//  main.swift
//  wordlasso
//
//  Created by Martin Linklater on 30/01/2024.
//

import Foundation
import ArgumentParser

struct Wordlasso : ParsableCommand {
    @Argument(help: """
        The word template to match, with \(WordFinder.wildcard) as \
        placeholders. Leaving this blank will enter interactive mode.
    """)
    
    var template: String?
    
    func run() throws {
        let path = "/usr/share/dict/words"
        let wordFinder = try WordFinder(wordListPath: path, ignoreCase: true)
        
        let args = CommandLine.arguments
        
//        var template: String
        
        if let template = template {
            findAndPrintMatches(for: template, using: wordFinder)
        } else {
            while true {
                print("Enter word template: ", terminator: "")
                template = readLine() ?? ""
                if template.isEmpty { return }
                findAndPrintMatches(for: template, using: wordFinder)
            }
        }
        
    }
    
    private func findAndPrintMatches(for template: String, using wordFinder: WordFinder) {
        let matches = wordFinder.findMatches(for: template)
        print("Found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
        for match in matches {
            print(match)
        }
    }
}

//var wordlasso = Wordlasso()

Wordlasso.main()

//do {
//    try wordlasso.run()
//} catch {
//    fatalError("Program exited unexpectedly \(error)")
//}
