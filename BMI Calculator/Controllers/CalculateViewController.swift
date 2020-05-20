//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiVal : String?
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    //method to get and display the height
    @IBAction func heightSliderAction(_ sender: UISlider) {
        let value = sender.value
        let roundedValue = (value * 100).rounded()/100
        heightLabel.text = "\(roundedValue)m"
    }
    
    //method to get and display the weight
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let value = sender.value
        let roundedValue = Int(value)
        weightLabel.text = "\(roundedValue)Kg"
    }
    
    //button action to execute adjacent result view
    @IBAction func calculateButtonAction(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(weight, height)
        //using segue for navigation
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    //method for navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let resultView = segue.destination as! ResultViewController
            //adding values into the UI
            resultView.bmiVal = calculatorBrain.getBMI()
            resultView.advice = calculatorBrain.getAdvice()
            resultView.color = calculatorBrain.getColor()
        }
    }
}

