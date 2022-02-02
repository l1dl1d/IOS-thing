//
//  ViewController.swift
//  hello word
//
//  Created by Khalid Javeed on 2/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeText(_ sender: UIButton) {helloLabel.text = "this is neat"
    }
    
}

