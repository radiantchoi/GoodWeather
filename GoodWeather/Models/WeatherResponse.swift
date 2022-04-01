//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/08.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
