//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Jose Cantillo on 8/29/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    
    var advice: String?
    
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var resultsBG: UIImageView!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    } 
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        resultsBG.backgroundColor = color
        adviceLabel.text = advice
        

        // Do any additional setup after loading the view.
    }
}
