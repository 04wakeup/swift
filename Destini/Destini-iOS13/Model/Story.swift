//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    var leftChoice: Int
    var rightChoice: Int
    
    init(title: String, choice1: String, leftChoice: Int, choice2: String,  rightChoice: Int){
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.leftChoice = leftChoice
        self.rightChoice = rightChoice
    }
}
