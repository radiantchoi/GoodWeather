//
//  AddWeatherDelegate.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/02.
//

import Foundation

protocol AddWeatherDelegate {
    func addWeatherDidSave(viewModel: WeatherViewModel)
}
