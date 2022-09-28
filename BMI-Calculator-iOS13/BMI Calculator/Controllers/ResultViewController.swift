//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mustafa Adnan Tatlıcı on 26.09.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
   
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
    
  

}
