//
//  Temperature.swift
//  Temperature Converter
//
//  Created by Khalid Javeed on 2/16/22.
//

import Foundation
struct Temperature{
    var tempInFahrenheit: Double
    var tempInCelsius: Double
    init(fahrenheit: Double){
        tempInFahrenheit = fahrenheit
        tempInCelsius = (5.0/9)*(tempInFahrenheit-32)
    }
    init(celsius: Double){
        tempInCelsius = celsius
        tempInFahrenheit = (celsius*(9.0/5)) + 32
    }
}
