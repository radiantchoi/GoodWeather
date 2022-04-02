//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/02.
//

import Foundation

class WeatherListViewModel {
    private var weatherViewModels = [WeatherViewModel]()
}

extension WeatherListViewModel {
    func addWeatherViewModel(_ viewModel: WeatherViewModel) {
        weatherViewModels.append(viewModel)
    }
    
    func numOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
        case .celcius:
            toCelcius()
        case .farenheit:
            toFarenheit()
        }
    }
}

extension WeatherListViewModel {
    func toCelcius() {
        weatherViewModels = weatherViewModels.map { viewModel in
            let weatherModel = viewModel
            weatherModel.temperature = (weatherModel.temperature - 32) * 5/9
            return weatherModel
        }
    }
    
    func toFarenheit() {
        weatherViewModels = weatherViewModels.map { viewModel in
            let weatherModel = viewModel
            weatherModel.temperature = (weatherModel.temperature * 9/5) + 32
            return weatherModel
        }
    }
}
