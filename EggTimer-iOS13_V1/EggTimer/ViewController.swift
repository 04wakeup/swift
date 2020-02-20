//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eggLabel: UILabel!
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    @IBOutlet weak var progressBar: UIProgressView!
    var counter = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @objc func updateCounter( ) {
        //example functionality
//        let hardness = sender.currentTitle
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
//            progressBar.progress += 1.0 / (eggTimes[hardness ?? ""]  ?? 0)
        } else if counter == 0 {
            timer.invalidate()
            eggLabel.text = "DONE!"
        }
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        
        timer.invalidate()
        counter = (eggTimes[hardness ?? ""]  ?? 0)
//        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter(  )), userInfo: nil, repeats: true)
    }
    

}
  
