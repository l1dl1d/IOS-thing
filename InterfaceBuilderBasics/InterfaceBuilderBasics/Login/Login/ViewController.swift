//
//  ViewController.swift
//  Login
//
//  Created by Khalid Javeed on 4/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
    }


}

