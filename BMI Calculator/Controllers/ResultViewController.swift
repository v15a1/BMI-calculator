//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Visal Rajapakse on 5/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

//view which displays the results
class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiVal : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    //button action
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
