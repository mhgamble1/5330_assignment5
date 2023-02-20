//
//  ConversionLogic.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/19/23.
//

import Foundation

struct ExchangeRates {
  var EUR: Double
  var JPY: Double
  var GBP: Double
  var AUD: Double
}

struct ConversionLogic {
  let exchangeRates = ExchangeRates(EUR: 0.94, JPY: 134.36, GBP: 0.83, AUD: 1.45)
  func convertCurrency(USD: Int, EUR: Bool, JPY: Bool, GBP: Bool, AUD: Bool) -> [String: Double] {
    var exchangeRates = [String: Double]()
    if EUR {
      // convert USD to EUR, rounding to 2 decimal places
      exchangeRates["EUR"] = Double(round(100 * Double(USD) * self.exchangeRates.EUR) / 100)
    }
    if JPY {
      exchangeRates["JPY"] = Double(round(100 * Double(USD) * self.exchangeRates.JPY) / 100)
    }
    if GBP {
      exchangeRates["GBP"] = Double(round(100 * Double(USD) * self.exchangeRates.GBP) / 100)
    }
    if AUD {
      exchangeRates["AUD"] = Double(round(100 * Double(USD) * self.exchangeRates.AUD) / 100)
    }
    return exchangeRates
  }

}
