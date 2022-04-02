//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/02.
//

import Foundation

class WeatherViewModel {
    
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.main.temp
    }
}

extension WeatherViewModel {
    
    var city: String {
        return weather.name
    }
}
