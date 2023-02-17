//
//  WeatherModel.swift
//  Clima
//
//  Created by Михаил Позялов on 15.02.2023.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format:"%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain"
        case 300...399:
            return "cloud.drizzle"
        case 500...599:
            return "cloud.heavyrain"
        case 600...699:
            return "cloud.snow"
        case 700...799:
            return "aqi.medium"
        case 800:
            return "sun.max"
        case 801...899:
            return "cloud"
        default:
            return "thermometer.sun"
        }
    }
}
