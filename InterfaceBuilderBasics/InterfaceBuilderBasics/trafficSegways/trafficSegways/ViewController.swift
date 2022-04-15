//
//  ViewController.swift
//  trafficSegways
//
//  Created by Khalid Javeed on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func greenButtonTaped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    @IBAction func yellowButtonTaped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    @IBOutlet weak var segueSwitch: UISwitch!
    @IBOutlet weak var outletToButton: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

