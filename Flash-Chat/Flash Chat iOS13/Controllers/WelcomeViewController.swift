//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit 

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var charaIndex = 0
        let titleText = K.appName
        titleLabel.text = ""
        for letter in titleText{ 
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charaIndex), repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charaIndex += 1
            
        }
    }
    
    
}
