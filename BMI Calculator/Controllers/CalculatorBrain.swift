//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jose Cantillo on 8/29/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    var advice : String?
    
    var color : UIColor?
    
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = weight/pow(height, 2)
        print(bmiValue)
        
        switch bmiValue {
        case ..<18.5:
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
            // Color literal
            /// color then click square
        case 18.5..<24.9:
            print("Normal Weight")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        case 24.9...:
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        default:
            print("Error")
            bmi = BMI(value: bmiValue, advice: "Error", color: UIColor.clear)

        }
        
    }
     
    func getBMIValue() -> String  {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
