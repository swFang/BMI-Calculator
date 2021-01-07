//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        updateSliderText(heightValue, updatedValue: sender.value, units: "m")
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        updateSliderText(weightValue, updatedValue: sender.value, units: "Kg")
    }
    
    func updateSliderText(_ label: UILabel, updatedValue: Float, units: String) {
        
        let format = units == "m" ? "%.2f" : "%.0f"
        label.text = String(format: format, updatedValue) + units
        
    }


}

