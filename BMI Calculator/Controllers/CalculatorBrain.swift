//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shi-Wei Fang on 2021-01-14.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        var newBMI: BMI
        
        if bmiValue < 18.5 {
            newBMI = BMI(value: bmiValue, advice: "Eat more pies", color: .systemTeal)
        } else if bmiValue < 24.9 {
            newBMI = BMI(value: bmiValue, advice: "Fit as a Fiddle", color: .systemGreen)
        } else {
            newBMI = BMI(value: bmiValue, advice: "No more pies!", color: .systemRed)
        }
        
        self.bmi = newBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
