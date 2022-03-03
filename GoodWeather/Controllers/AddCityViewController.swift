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
    
    @IBAction func saveButtonPressed() {
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
