//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Gordon Choi on 2022/03/08.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
