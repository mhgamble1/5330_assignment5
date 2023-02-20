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
            self.performSegue(withIdentifier: "toConversion", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConversionView
            navigation.USD_in = Int(USD.text!)!
            navigation.EUR_switch = EUR_switch.isOn
            navigation.JPY_switch = JPY_switch.isOn
            navigation.GBP_switch = GBP_switch.isOn
            navigation.AUD_switch = AUD_switch.isOn
        }
    }
}

