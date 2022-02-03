//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Khalid Javeed on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func press(_ sender: UIButton) { mainLabel.text = "This app rocks!"
    }
}

