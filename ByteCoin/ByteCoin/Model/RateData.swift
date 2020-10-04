//
//  RateData.swift
//  ByteCoin
//
//  Created by Jonghyun Choi on 2020-10-04.

import Foundation

struct RateData: Codable{
    let time: String
    let base: String
    let currency: String
    let rate: Double
}
