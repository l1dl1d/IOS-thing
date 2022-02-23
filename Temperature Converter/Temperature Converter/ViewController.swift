//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Khalid Javeed on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var switchTemp: UISwitch!
    @IBOutlet weak var getTemp: UITextField!
    var temp: Temperature?
    override func
        viewDidLoad() {
            
        super.viewDidLoad()
        let currentTemp = Double(getTemp.text!)
        if switchTemp.isOn {
            temp = Temperature(celsius: currentTemp!)
        } else {
            temp = Temperature(fahrenheit: currentTemp!)
        }
        changeTemp()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayTemp: UILabel!
    
    

    @IBAction func updateTemp(_ sender: Any) {
        let currentTemp = Double(getTemp.text!)
        if switchTemp.isOn {
            temp = Temperature(celsius: currentTemp!)
            
        } else {
            temp = Temperature(fahrenheit: currentTemp!)
        }
        changeTemp()
    }
    
    func changeTemp(){
        if switchTemp.isOn{
            tempLabel.text = "\(temp!.tempInFahrenheit)"
        }
        else{
            tempLabel.text = "\(temp!.tempInCelsius)"
        }
    }
}

