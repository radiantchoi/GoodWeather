//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/02.
//

import Foundation

class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
}

extension WeatherViewModel {
    
    var city: String {
        return weather.name
    }
    
    var temperature: Double {
        return weather.main.temp
    }
}
