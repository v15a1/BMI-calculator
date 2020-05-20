//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Visal Rajapakse on 5/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    //calculating the BMI and initializing the new BMI structures
    mutating func calculateBMI(_ weight : Float, _ height : Float){
       let value = weight / pow(height, 2)
        if value < 18.5 {
            bmi = BMI(value: value, advice: "Eat more!", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else if value < 24.9{
            bmi = BMI(value: value, advice: "Stay as you are", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: value, advice: "Exercise a lil", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }

    }
    
    //getters
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
    }
}
