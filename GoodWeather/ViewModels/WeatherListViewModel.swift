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
}
