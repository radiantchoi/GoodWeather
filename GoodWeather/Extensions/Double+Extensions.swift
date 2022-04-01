//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/04/02.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
