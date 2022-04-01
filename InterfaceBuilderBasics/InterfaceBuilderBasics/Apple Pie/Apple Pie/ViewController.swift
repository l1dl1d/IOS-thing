//
//  ViewController.swift
//  Apple Pie
//
//  Created by Khalid Javeed on 3/4/22.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["table", "chainsaw", "body", "knife", "ball", "kid"]
    let incorrectMovesAllowed = 4
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
  
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        }else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        }else {
            updateUI()
        }
        var totalWins = 0{
            didSet {
                newRound()
            }
        }
        var totalLosses = 0{
            didSet{
                newRound()
            }
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        newRound()
    
        // Do any additional setup after loading the view.
    }
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }else{
            enableLetterButtons(false)
        }
    }
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins) loses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }

}

