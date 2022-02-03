//
//  ViewController.swift
//  light
//
//  Created by Khalid Javeed on 2/3/22.
//

import UIKit
var lightOn = true
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        if lightOn {
            view.backgroundColor = .white
        }else {
            view.backgroundColor = .black
        }
    }
    
}

