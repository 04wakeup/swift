//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var calculateBrain = CalculateBrain()
    var tipPct: Float = 0.0
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var stepperValue: UIStepper!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        if(sender.currentTitle == "0%"){
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        }else if (sender.currentTitle == "10%"){
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tipPct = 10
        }else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            tipPct = 20
        }
        billTextField.endEditing(true)  // dismiss the keyboard
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(stepperValue.value))
         
    }
   
    @IBAction func calculatePressed(_ sender: UIButton) {
         
        let finalSplitNum = Float(splitNumberLabel.text ?? "0.0")!
        let finalBillAmount = Float(billTextField.text ?? "0.0") ?? 0.0  // ??? why do we need put more nil handling at the last part???
//        let finalAmount = finalBillAmount * (1 + tipPct) / finalSplitNum
        
        calculateBrain.calculateAmount(finalBillAmount: finalBillAmount, tipPct: tipPct, finalSplitNum: finalSplitNum)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.finalAmount = calculateBrain.getAmount()
            destinationVC.finalMessage = calculateBrain.getMessage()
        }
    }
    

}

