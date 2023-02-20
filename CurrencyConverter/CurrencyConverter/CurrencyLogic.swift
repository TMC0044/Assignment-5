//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Tyler Carter on 2/17/23.
//

import Foundation

struct CurrencyLogic {
    
    mutating func convertToEuro(_ amount: Double) -> Double {
        let euroMultiplier : Double = 0.94
        let euros = amount * euroMultiplier
        return round(100.00 * euros) / 100.00
    }
    
    mutating func convertToEgyptian(_ amount: Double) -> Double {
        let egyptianMultiplier : Double = 30.38
        let egyptian = amount * egyptianMultiplier
        return round(100.0 * egyptian) / 100.0
    }
    
    mutating func convertToAustralian(_ amount: Double) -> Double {
        let australianMultiplier : Double = 1.45
        let australian = amount * australianMultiplier
        return round(100.0 * australian) / 100.0
    }
    
    mutating func convertToArgentine(_ amount: Double) -> Double {
        let argentineMultiplier : Double = 191.75
        let argentineDollar = amount * argentineMultiplier
        return round(100.0 * argentineDollar) / 100.0
    }
}
