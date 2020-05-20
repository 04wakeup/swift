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
    
//    var questionNumber = 0
//    var nextQuestionIndex = 0
    
//    var stories = [
//        Story(title: "You see a fork in the road.",
//              choice1: "Take a left",
//              choice2: "Take a right!.",
//              leftChoice: 1,
//              rightChoice: 2
//        ),
//        Story(title: "You see a tiger.",
//              choice1: "Shout for help",
//              choice2: "Play dead!.",
//              leftChoice: 0,
//              rightChoice: 0
//            
//        ),
//        Story(title: "You find a treasure chest.",
//              choice1: "Open it",
//              choice2: "Check for traps",
//              leftChoice: 0,
//              rightChoice: 0
//        )
//    ]
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

