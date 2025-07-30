//
//  Game.swift
//  ApplePie
//
//  Created by Student on 23/07/25.
//

import Foundation

struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guessLetters: [Character]
    
    var formattedWord: String{
        var guessWord: String = ""
        for letter in word{
            if guessLetters.contains(letter){
                guessWord += "\(letter) "
            }else{
                guessWord += "_"
            }
        }
        return guessWord
    }
    mutating func playerGuessed(letter: Character){
        guessLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}
