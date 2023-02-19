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
            print("reached here")
            Error_label.textColor = UIColor.white
            // for each switch that is on, convert USD to that currency
            if EUR_switch.isOn {
                let EUR = Double(USD.text!)! * 0.84
                print("EUR: \(EUR)")
            }
            if JPY_switch.isOn {
                let JPY = Double(USD.text!)! * 109.5
                print("JPY: \(JPY)")
            }
            if GBP_switch.isOn {
                let GBP = Double(USD.text!)! * 0.72
                print("GBP: \(GBP)")
            }
            if AUD_switch.isOn {
                let AUD = Double(USD.text!)! * 1.32
                print("AUD: \(AUD)")
            }
        }
    }
}

