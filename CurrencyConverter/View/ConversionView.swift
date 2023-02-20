//
//  ConversionView.swift
//  CurrencyConverter
//
//  Created by Mark Gamble on 2/19/23.
//

import UIKit

class ConversionView: UIViewController {

    @IBOutlet weak var EUR_stack: UIStackView!
    @IBOutlet weak var JPY_stack: UIStackView!
    @IBOutlet weak var GBP_stack: UIStackView!
    @IBOutlet weak var AUD_stack: UIStackView!
    @IBOutlet weak var USD: UILabel!
    @IBOutlet weak var EUR: UILabel!
    @IBOutlet weak var JPY: UILabel!
    @IBOutlet weak var GBP: UILabel!
    @IBOutlet weak var AUD: UILabel!
    
    var USD_in = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
