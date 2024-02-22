//
//  Currency.swift
//  Assignment6
//
//  Created by Michael Baljet on 2/18/24.
//

import Foundation

enum Currency {
    case peso
    case ruble
    case yen
    case euro
    
    func convert(amount: Int) -> Double {
        switch self {
        case .peso:
            return Double(amount) * 17.05
        case .ruble:
            return Double(amount) * 92.01
        case .yen:
            return Double(amount) * 150.27
        case .euro:
            return Double(amount) * 0.92
        }
    }
}
