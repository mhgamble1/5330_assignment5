//
//  NavigationViewController.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/19/23.
//

import UIKit

class NavigationViewController: UIViewController {
    let USD = 0
    let EUR_switch = false
    let JPY_switch = false
    let GBP_switch = false
    let AUD_switch = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Welcome"
        label.frame = CGRect(x: 100, y: 100, width: 300, height: 300)
        view.backgroundColor = UIColor.blue
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
