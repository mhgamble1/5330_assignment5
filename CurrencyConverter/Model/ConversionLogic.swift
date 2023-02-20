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
  let exchangeRates = ExchangeRates(EUR: 0.84, JPY: 109.5, GBP: 0.72, AUD: 1.32)
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
