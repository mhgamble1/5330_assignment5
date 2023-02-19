//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var USD: UITextField!
    @IBOutlet weak var EUR_switch: UISwitch!
    @IBOutlet weak var JPY_switch: UISwitch!
    @IBOutlet weak var GBP_switch: UISwitch!
    @IBOutlet weak var AUD_switch: UISwitch!
    @IBOutlet weak var Convert_button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigate(_ sender: UIButton) {
        let navigateController = NavigationViewController()
        let navigateController.USD = USD;
        let navigateController.EUR_switch = EUR_switch;
        self.present(navigateController, animated: true, completion: nil)
    }
    
}

