//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Jonghyun Choi on 2020-09-22.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct CalculateBrain{
    var result: Result?
    
    func getMessage() -> String {
        return result?.message ?? "no message"
    }
    
    func getAmount() -> Float {
        return result?.amount ?? 0.0
    }
    
    mutating func calculateAmount(finalBillAmount: Float, tipPct: Float, finalSplitNum: Float){
        let finalAmount = (finalBillAmount + finalBillAmount * (tipPct / 100.0)) / finalSplitNum
        let finalMessage = "Split between \(Int(finalSplitNum)) people, with \(Int(tipPct))% tip"
        result = Result(amount: finalAmount, message: finalMessage)
    }
}
