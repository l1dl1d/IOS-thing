//
//  Game.swift
//  Apple Pie
//
//  Created by Khalid Javeed on 3/9/22.
//

import Foundation
struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character){
        gueassedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
        
    }
}
