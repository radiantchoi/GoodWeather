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
    
    private var addCityViewModel = AddCityViewModel()
    var delegate: AddWeatherDelegate?
    
}

extension AddCityViewController {
    
    @IBAction func saveButtonPressed() {
        guard let city = cityNameTextField.text else { return }
        
        addCityViewModel.addWeather(for: city) { (viewModel) in
            self.delegate?.addWeatherDidSave(viewModel: viewModel)
            self.dismiss(animated: true)
        }
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
