//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var USD: UITextField!
    @IBOutlet weak var Error_label: UILabel!
    @IBOutlet weak var EUR_switch: UISwitch!
    @IBOutlet weak var JPY_switch: UISwitch!
    @IBOutlet weak var GBP_switch: UISwitch!
    @IBOutlet weak var AUD_switch: UISwitch!
    @IBOutlet weak var Convert_button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func USD(_ sender: UITextField) {
        
    }
    
    @IBAction func EUR_switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func JPY_switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func GBP_switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func AUD_switch(_ sender: UISwitch) {
        
    }
    
    
    @IBAction func Convert_button(_ sender: UIButton) {
        // if USD is empty
        if USD.text == "" {
            return
        }
        // if no switches are on
        if !EUR_switch.isOn && !JPY_switch.isOn && !GBP_switch.isOn && !AUD_switch.isOn {
            return
        }
        // if USD is not an integer, make the text color of Error_label red
        if Int(USD.text!) == nil {
            Error_label.textColor = UIColor.red
            return
        } else {
            Error_label.textColor = UIColor.white
            // create an instance of conversionLogic
            let conversionLogic = ConversionLogic()
            // call the convertCurrency function
            conversionLogic.convertCurrency(USD: Int(USD.text!)!, EUR: EUR_switch.isOn, JPY: JPY_switch.isOn, GBP: GBP_switch.isOn, AUD: AUD_switch.isOn)
        }
    }
}
