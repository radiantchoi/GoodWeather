//
//  Constants.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/08.
//

import Foundation

struct Constants {
    struct Urls {
        static func UrlForWeatherByCity(city: String) -> URL {
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "metric"
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=196f7bc70743aeee8712067f634e1eb6&units=\(unit)")!
        }
    }
}
