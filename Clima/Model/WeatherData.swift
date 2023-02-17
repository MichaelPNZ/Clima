//
//  WeatherData.swift
//  Clima
//
//  Created by Михаил Позялов on 14.02.2023.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let visibility: Int
    let wind: Wind
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
}

struct Weather: Codable {
    let description: String
    let icon: String
    let id: Int
}

struct Wind: Codable {
    let speed: Double
}
