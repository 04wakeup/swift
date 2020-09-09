//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print( (String(format: "%.2f", sender.value)))
        heightLable.text = String(format: "%.2f", sender.value) + " m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print( (Int(sender.value)))
        weightLabel.text = String(Int(sender.value)) + " kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2) 
    }
    
}

