//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/03.
//

import Foundation

enum Unit: String, CaseIterable {
    case celcius = "metric"
    case farenheit = "imperial"
}

extension Unit {
    
    var displayName: String {
        get {
            switch(self) {
            case .celcius:
                return "Celcius"
            case .farenheit:
                return "Farenheit"
            }
        }
    }
    
}

class SettingsViewModel {
    
    let units = Unit.allCases
    
    var selectedUnit: Unit {
        get {
            let userDefaults = UserDefaults.standard
            var unitValue = ""
            if let value = userDefaults.value(forKey: "unit") as? String {
                unitValue = value
            }
            return Unit(rawValue: unitValue)!
        }
        set {
            let userDefault = UserDefaults.standard
            userDefault.set(newValue.rawValue, forKey: "unit")
        }
    }
}
