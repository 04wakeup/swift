//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jonghyun Choi on 2020-09-22.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var finalAmount: Float?
    var finalMessage: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", finalAmount ?? 0.0)
        settingsLabel.text = finalMessage
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
 

}
