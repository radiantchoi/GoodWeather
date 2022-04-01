//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/02.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController {
    
}

extension WeatherListTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
//        let resource = Resource(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Seongnam&appid=196f7bc70743aeee8712067f634e1eb6&units=metric")!) { data in
//            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
//        }
//
//        WebService().load(resource: resource) { weatherResponse in
//            guard let weatherResponse = weatherResponse else {
//                return
//            }
//
//            print(weatherResponse)
//        }
    }
}

extension WeatherListTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLabel?.text = "Houston"
        cell.temperatureLabel?.text = "70°"
        return cell
    }
}
