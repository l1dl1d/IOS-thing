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
        updateUI()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        newRound()
    
        // Do any additional setup after loading the view.
    }
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }
    func updateUI(){
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins) loses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

}

