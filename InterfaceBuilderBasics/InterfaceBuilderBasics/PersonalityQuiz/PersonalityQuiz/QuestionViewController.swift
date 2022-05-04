//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Khalid Javeed on 4/28/22.
//

import UIKit

class QuestionViewController: UITableViewController {
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var rangedStackView: UIStackView!
    
    var questions: [Question] = [
      Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
          Answer(text: "Steak", type: .cat),
          Answer(text: "Fish", type: .cockroach),
          Answer(text: "Bananas", type: .gorilla),
          Answer(text: "lettuce", type: .butterfly)
        ]
      ),

      Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
          Answer(text: "Jumping", type: .butterfly),
          Answer(text: "Sleeping", type: .cockroach),
          Answer(text: "boxing", type: .gorilla),
          Answer(text: "Sleeping", type: .cat)
        ]
      ),

      Question(
        text: "How much do you enjoy car rides?",
        type: .ranged,
        answers: [
          Answer(text: "I fell average about them", type: .cockroach),
          Answer(text: "I get a little nervous", type: .gorilla),
          Answer(text: "I barely notice them", type: .butterfly),
          Answer(text: "I dislike them", type: .cat)
        ]
      )
    ]
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
       }

       func updateUI() {
           singleStackView.isHidden = true
               multipleStackView.isHidden = true
               rangedStackView.isHidden = true

               navigationItem.title = "Question #\(questionIndex + 1)"

               let currentQuestion = questions[questionIndex]

               switch currentQuestion.type {
               case .single:
                   singleStackView.isHidden = false
               case .multiple:
                   multipleStackView.isHidden = false
               case .ranged:
                   rangedStackView.isHidden = false
               }

       }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
