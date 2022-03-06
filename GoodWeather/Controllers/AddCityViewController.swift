//
//  AddCityViewController.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/02.
//

import Foundation
import UIKit

class AddCityViewController: UIViewController {
    @IBOutlet weak var cityNameTextField: UITextField!
    
}

extension AddCityViewController {
    
    @IBAction func saveButtonPressed() {
        guard let city = cityNameTextField.text else { return }
        let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=196f7bc70743aeee8712067f634e1eb6&units=metric")!
        
        let weatherResource = Resource<Any>(url: weatherURL) { data in
            return data
        }
        
        WebService().load(resource: weatherResource) { result in
            
        }
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
