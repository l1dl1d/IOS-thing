//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Khalid Javeed on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchTemp: UISwitch!
    @IBOutlet weak var getTemp: UITextField!
    var temp: Temperature?
    override func
        viewDidLoad() {
            //changeTemp()
        super.viewDidLoad()
        let currentTemp = Double(getTemp.text!)
        if switchTemp.isOn {
            temp = Temperature(celsius: currentTemp!)
        } else {
            temp = Temperature(fahrenheit: currentTemp!)
        }
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayTemp: UILabel!
    
    

    @IBAction func updateTemp(_ sender: Any) {
    }
    
    func changeTemp(){
        if switchTemp.isOn{
            getTemp.text = "\(temp!.tempInFahrenheit)"
        }
        else{
            getTemp.text = "\(temp!.tempInCelsius)"
        }
    }
}

