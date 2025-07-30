//
//  ViewController.swift
//  ApplePie
//
//  Created by Student on 18/07/25.
//

import UIKit


var listOfWords: [String] = ["apple", "banana", "cherry", "damson", "elderberry", "fig", "grape", "jackfruit", "kiwi", "lemon", "lime", "mango", "orange", "papaya", "pineapple", "plum", "pomegranate", "quince", "raspberry", "starfruit", "tangerine", "watermelon"]
let incorrectMovesAllowed: Int = 7
var totalWins = 0
var totalLosses = 0


class ViewController: UIViewController {
    
    var totalWins: Int = 0{
        didSet {
            newRound( )
        }
    }
    var totalLosses: Int = 0{
        didSet {
            newRound()
        }
    }
    
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
        
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound(){
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessLetters: [])
            enableLetterButtons(true)
            updateUI()
        }else{
            enableLetterButtons(false)
        }
    }
    func enableLetterButtons(_ enable: Bool){
        for button in letterButtons{
            button.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in letters {
            letters.append(String(letter))
        }
        
        let wordWithSpacing = letters.joined(separator: " ")
        
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false    
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0{
            totalLosses += 1
        }else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        }
        updateUI()
    }
}
