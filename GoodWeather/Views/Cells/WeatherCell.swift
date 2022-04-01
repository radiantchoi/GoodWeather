//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/04.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
}

extension WeatherCell {
    
    func configure(_ viewModel: WeatherViewModel) {
        self.cityNameLabel.text = viewModel.city
        self.temperatureLabel.text = "\(viewModel.temperature.formatAsDegree())"
    }
}
