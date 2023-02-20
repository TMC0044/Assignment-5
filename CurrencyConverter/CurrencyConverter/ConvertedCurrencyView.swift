//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by Tyler Carter on 2/17/23.
//

import UIKit

class ConvertedCurrencyView: UIViewController {

    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var usdAmount: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var euroAmount: UILabel!
    @IBOutlet weak var egyptianLabel: UILabel!
    @IBOutlet weak var egyptianAmount: UILabel!
    @IBOutlet weak var australianLabel: UILabel!
    @IBOutlet weak var australianAmount: UILabel!
    @IBOutlet weak var argentineLabel: UILabel!
    @IBOutlet weak var argentineAmount: UILabel!

    var usd : Double = 0
    var euros : Double = 0
    var egyptian : Double = 0
    var australian : Double = 0
    var argentine : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usdAmount.text = String(format: "%.2f", usd)
        
        euroAmount.text = euros != -1 ? String(format: "%.2f", euros) : hideDisabledCurrency(euroLabel, euroAmount)
        egyptianAmount.text = egyptian != -1 ? String(format: "%.2f", egyptian) : hideDisabledCurrency(egyptianLabel, egyptianAmount)
        australianAmount.text = australian != -1 ? String(format: "%.2f", australian) : hideDisabledCurrency(australianLabel, australianAmount)
        argentineAmount.text = argentine != -1 ? String(format: "%.2f", argentine) : hideDisabledCurrency(argentineLabel, argentineAmount)
    }
    
    func hideDisabledCurrency(_ currencyLabel : UILabel, _ amountLabel : UILabel) -> String {
        currencyLabel.isHidden = true
        amountLabel.isHidden = true
        
        return ""
    }
    

    @IBAction func closeModalBtn(_ sender: Any) {
        dismiss(animated: true)
    }

}
