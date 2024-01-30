//
//  WordFinder.swift
//  wordlasso
//
//  Created by Martin Linklater on 30/01/2024.
//

import Foundation

class WordFinder {
    static let wildcard: Character = "."
    let wordList: [String]
    
    init(wordList: [String]) {
        self.wordList = wordList
    }
    
    private func isMatch(template: String, with word: String)-> Bool {
        guard template.count == word.count else { return false }
        return template.indices.allSatisfy{ index in
            template[index] == WordFinder.wildcard || template[index] == word[index]
        }
    }
    
    func findMatches(for template: String) -> [String] {
        return wordList.filter { candidate in
        isMatch(template: template, with: candidate )}
    }
}
