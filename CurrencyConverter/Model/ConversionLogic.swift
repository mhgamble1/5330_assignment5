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
  // create an exchange rate object
  let exchangeRates = ExchangeRates(EUR: 0.84, JPY: 109.5, GBP: 0.72, AUD: 1.32)

  // write a function to take in the boolean values of the currency switches like this "if EUR_switch.isOn, if JPY_switch.isOn, etc." then, convert USD to those currencies. then, print the results
  func convertCurrency(USD: Int, EUR: Bool, JPY: Bool, GBP: Bool, AUD: Bool) {
    // if EUR is on
    if EUR {
      // convert USD to EUR
      let EUR = Double(USD) * exchangeRates.EUR
      // print the result
      print("EUR: \(EUR)")
    }
    // if JPY is on
    if JPY {
      // convert USD to JPY
      let JPY = Double(USD) * exchangeRates.JPY
      // print the result
      print("JPY: \(JPY)")
    }
    // if GBP is on
    if GBP {
      // convert USD to GBP
      let GBP = Double(USD) * exchangeRates.GBP
      // print the result
      print("GBP: \(GBP)")
    }
    // if AUD is on
    if AUD {
      // convert USD to AUD
      let AUD = Double(USD) * exchangeRates.AUD
      // print the result
      print("AUD: \(AUD)")
    }
  }
}
