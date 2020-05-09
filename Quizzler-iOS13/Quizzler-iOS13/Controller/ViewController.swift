//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var scoreLevel: UILabel!
    @IBOutlet weak var threeButton: UIButton!
    
    var timer = Timer()
    
    var quizBrain = QuizBrain()
 
    
    
    var questionTotalCount: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. 
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(userAnswer)
         
        if userGotRight{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
             
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        oneButton.titleLabel?.text = quizBrain.getAnswerText(position: 0)
        twoButton.titleLabel?.text = quizBrain.getAnswerText(position: 1)
        threeButton.titleLabel?.text = quizBrain.getAnswerText(position: 2)
        scoreLevel.text = "Score: \(quizBrain.getScore())"
        oneButton.backgroundColor = UIColor.clear
        twoButton.backgroundColor = UIColor.clear
        threeButton.backgroundColor = UIColor.clear
         
    }
    
    
}

