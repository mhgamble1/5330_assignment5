//
//  ConversionView.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/19/23.
//

import UIKit

class ConversionView: UIViewController {

  @IBOutlet weak var EUR_label: UILabel!
  @IBOutlet weak var JPY_label: UILabel!
  @IBOutlet weak var GBP_label: UILabel!
  @IBOutlet weak var AUD_label: UILabel!
  @IBOutlet weak var USD: UILabel!
  @IBOutlet weak var EUR: UILabel!
  @IBOutlet weak var JPY: UILabel!
  @IBOutlet weak var GBP: UILabel!
  @IBOutlet weak var AUD: UILabel!

  var USD_in = 0
  var EUR_switch = false
  var JPY_switch = false
  var GBP_switch = false
  var AUD_switch = false

  override func viewDidLoad() {
    super.viewDidLoad()

    let conversionLogic = ConversionLogic()

    makeLabelsWhite()
    makeNumbersWhite()

    let results = conversionLogic.convertCurrency(
      USD: USD_in, EUR: EUR_switch, JPY: JPY_switch, GBP: GBP_switch, AUD: AUD_switch)
    processResults(results: results)
  }

  func processResults(results: [String: Double]) {
    USD.text = "USD " + String(USD_in)
    for (key, value) in results {
      switch key {
      case "EUR":
        makeEURVisible()
        EUR.text = String(value)
        break
      case "JPY":
        makeJPYVisible()
        JPY.text = String(value)
        break
      case "GBP":
        makeGBPVisible()
        GBP.text = String(value)
        break
      case "AUD":
        makeAUDVisible()
        AUD.text = String(value)
        break
      default:
        break
      }
    }
  }

  func makeLabelsWhite() {
    EUR_label.textColor = UIColor.white
    JPY_label.textColor = UIColor.white
    GBP_label.textColor = UIColor.white
    AUD_label.textColor = UIColor.white
  }

  func makeNumbersWhite() {
    EUR.textColor = UIColor.white
    JPY.textColor = UIColor.white
    GBP.textColor = UIColor.white
    AUD.textColor = UIColor.white
  }

  func makeEURVisible() {
    EUR.textColor = UIColor.red
    EUR_label.textColor = UIColor.black
  }

  func makeJPYVisible() {
    JPY.textColor = UIColor.red
    JPY_label.textColor = UIColor.black
  }

  func makeGBPVisible() {
    GBP.textColor = UIColor.red
    GBP_label.textColor = UIColor.black
  }

  func makeAUDVisible() {
    AUD.textColor = UIColor.red
    AUD_label.textColor = UIColor.black
  }

  @IBAction func back_button(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }

}
