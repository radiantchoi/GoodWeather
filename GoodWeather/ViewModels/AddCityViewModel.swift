//
//  AddCityViewModel.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/08.
//

import Foundation

class AddCityViewModel {
    
}

extension AddCityViewModel {
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void) {
        let weatherURL = Constants.Urls.UrlForWeatherByCity(city: city)
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        WebService().load(resource: weatherResource) { (result) in
            guard let weatherResource = result else { return }
            
            let viewModel = WeatherViewModel(weather: weatherResource)
            completion(viewModel)
        }
    }
}
