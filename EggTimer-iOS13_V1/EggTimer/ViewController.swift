//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var eggLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var player: AVAudioPlayer!
    var counter = 0
    var timer = Timer()
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]  // dictionary
    var totalTime = 0.0
    var secondsPassed = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @objc func updateCounter( ) {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed += 1.0
            let percentageProgress = secondsPassed / totalTime
            progressBar.progress = Float(percentageProgress)
        } else  {
            timer.invalidate()
            eggLabel.text = "DONE!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        totalTime = 0.0
        secondsPassed = 0.0
        eggLabel.text = sender.currentTitle!
        let hardness = sender.currentTitle!
        totalTime = Double(eggTimes[hardness]!)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    

}
  
