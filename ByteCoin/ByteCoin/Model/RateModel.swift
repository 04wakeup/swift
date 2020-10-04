//
//  RateModel.swift
//  ByteCoin
//
//  Created by Jonghyun Choi on 2020-10-04.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct RateModel{
    let time: String
    let base: String
    let currency: String
    let rate: Double
    
    var currencyString: String{
        return String(format: ".2f", rate)
    }
}
