//
//  RateData.swift
//  ByteCoin
//
//  Created by Jonghyun Choi on 2020-10-04.

import Foundation

struct RateData: Codable{ 
    let rate: Double
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    
    var rateString: String{
        return String(format: ".2f%", rate)
    }
}
