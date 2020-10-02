//
//  WeatherModel.swift
//  Clima
//
//  Created by Jonghyun Choi on 2020-09-30.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
            return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 1..<300:
            return "cloud.bolt"
        case 300..<400:
            return "cloud.drizzle"
        case 500..<600:
            return "cloud.heavyrain"
        case 600..<700:
            return "cloud.snow"
        case 700..<800:
            return "smoke"
        case 800:
            return "sun.max"
        default:
            return "cloud"
        }
    }
    
}
