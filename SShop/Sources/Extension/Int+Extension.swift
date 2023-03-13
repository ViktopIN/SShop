//
//  Int+Extension.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import Foundation

extension Int {
    var withDollar: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return " \u{0024} " + (formatter.string(for: self) ?? "0")
    }
}
