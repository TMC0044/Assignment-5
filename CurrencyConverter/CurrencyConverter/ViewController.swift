//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Tyler Carter on 2/17/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var amountInput: UITextField!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var EgyptianSwitch: UISwitch!
    @IBOutlet weak var AustralianSwitch: UISwitch!
    @IBOutlet weak var ArgentineSwitch: UISwitch!
    var currencyLogic = CurrencyLogic()
    
    var usd : Double = 0
    var euros : Double = 0
    var egyptian : Double = 0
    var australian : Double = 0
    var argentine : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountInput.keyboardType = .numberPad
        amountInput.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func convert(_ sender: Any) {
        let usdInput : Double  = Double(amountInput.text ?? "0" ) ?? 0
        
        usd = usdInput
        
        euros = euroSwitch.isOn ? currencyLogic.convertToEuro(usdInput) : -1
        egyptian = EgyptianSwitch.isOn ? currencyLogic.convertToEgyptian(usdInput) : -1
        australian = AustralianSwitch.isOn ? currencyLogic.convertToAustralian(usdInput) : -1
        argentine = ArgentineSwitch.isOn ? currencyLogic.convertToArgentine(usdInput) : -1

        self.performSegue(withIdentifier: "toConverted", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverted" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.usd = usd
            navigation.euros = euros
            navigation.egyptian = egyptian
            navigation.australian = australian
            navigation.argentine = argentine
        }
    }
    
    // Restricts amountInput entry to only integer chars
    func textField(_ textField: UITextField,
      shouldChangeCharactersIn range: NSRange,
      replacementString string: String) -> Bool {  let invalidCharacters =
        CharacterSet(charactersIn: "0123456789").inverted
        return (string.rangeOfCharacter(from: invalidCharacters) == nil)
    }
}

