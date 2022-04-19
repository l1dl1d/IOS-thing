//
//  ViewController.swift
//  Login
//
//  Created by Khalid Javeed on 4/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = username.text
        }
        
    }
    
    @IBAction func forgotUsernameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    

}

