//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
     
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(nextQuestionIndex: storyBrain.questionNumber)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle ?? ""
        let nextQuestionIndex = storyBrain.getNextQuestionIndex(userAnswer: userAnswer)
 
        updateUI(nextQuestionIndex: nextQuestionIndex)
    }
   
    func updateUI(nextQuestionIndex: Int){
        storyLabel.text = storyBrain.getQuestionText(nextQuestionIndex: nextQuestionIndex)
        choice1Button.setTitle(storyBrain.getAnswerText(nextQuestionIndex: nextQuestionIndex, choiceIndex: 0), for: .normal)
        choice2Button.setTitle(storyBrain.getAnswerText(nextQuestionIndex: nextQuestionIndex, choiceIndex: 1), for: .normal)
        
    }
}

