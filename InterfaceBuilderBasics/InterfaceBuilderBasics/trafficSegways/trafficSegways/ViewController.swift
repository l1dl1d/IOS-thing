//
//  ViewController.swift
//  trafficSegways
//
//  Created by Khalid Javeed on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func greenButtonTaped(_ sender: Any) {
    }
    @IBAction func yellowButtonTaped(_ sender: Any) {
    }
    @IBOutlet weak var segueSwitch: UISwitch!
    @IBOutlet weak var outletToButton: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindTolked(unwindsegth: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        segue.destination.navigationItem.title = outletToButton.text
    }
    override func performSegue(withIdentifier identifier: "Yellow", sender: nil) {
        
    }
    override func performSegue(withIdentifier identifier: "green", sender: nil) {
        
    }


}

