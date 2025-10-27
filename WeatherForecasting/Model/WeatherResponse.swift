//
//  WeatherResponse.swift
//  WeatherForecasting
//
//  Created by AM Student on 10/24/25.
//

import Foundation

struct Location: Codable {
    let name: String
    let region: String
    let country: String
    let lat: Double
    let lon: Double
    let tz_id: String
    let localtime_epoch: Int
    let localtime: String
}

struct Condition: Codable {
    let text: String
    let code: Int
}

struct Current: Codable {
    let temp_f: Double
    let condition: Condition
    let wind_mph: Double
    let wind_dir: String
    let humidity: Int
}

struct Day: Codable {
    let maxtemp_f: Double
    let mintemp_f: Double
    let condition: Condition
}

struct ForecastDay: Codable {
    let date: String
    let day: Day
}

struct Forecast: Codable {
    let forecastday: [ForecastDay]
}

struct WeatherResponse: Codable {
    let location: Location
    let current: Current
    let forecast: Forecast
}
