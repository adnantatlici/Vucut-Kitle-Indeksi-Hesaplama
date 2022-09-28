//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mustafa Adnan Tatlıcı on 26.09.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


struct calculatorBrain {
    
    var bmi: BMI?
  
    
    
    func getAdvice() -> String {

        return bmi?.advice ?? "No Advice"
    }
    
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
        
    }
    
    
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
     mutating func calculateBMI(height: Float, weight: Float) {
         let bmiValue = weight / (height * height)
        
         if bmiValue < 18.5 {
          bmi =   BMI(value: bmiValue, advice: "Daha Çok Yemek Yemelisin", color: .red)
         } else if bmiValue < 24.9 {
           bmi =  BMI(value: bmiValue, advice: "Çok İyi", color: .blue)
         } else {
            bmi = BMI(value: bmiValue, advice: "Daha Az Yemek Yemelisin", color: .red)
         }
          
     }
    
}
