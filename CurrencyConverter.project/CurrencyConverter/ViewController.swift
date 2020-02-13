//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ben Gohlke on 8/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

enum Currency {
    case cad
    case mxn
}
var currency: Currency = .cad

class ViewController: UIViewController {
    
    // MARK: - Outlets/Properties
    
    @IBOutlet weak var fromCurrencyTextField: UITextField!
    @IBOutlet weak var toCurrencyTextField: UITextField!
    
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    @IBOutlet weak var cadButton: UIButton!
    @IBOutlet weak var mxnButton: UIButton!

    // MARK: - Actions
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let input = fromCurrencyTextField?.text else {
            return
        }
        guard let answer = Double(input) else {
            return
        }
        let outcome = convert(answer)
        
        //toCurrencyTextField.text = String(outcome)
        func convertDoubleToCurrency(amount: Double) -> String {
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .currency
            if cadButton.isSelected == true {
                numberFormatter.locale = Locale(identifier: "en_CA")
            } else {
                numberFormatter.locale = Locale(identifier: "es_MX")
            }
            
            return numberFormatter.string(from: NSNumber(value: outcome))!
        }
        toCurrencyTextField.text = convertDoubleToCurrency(amount: outcome)
    }
    
    @IBAction func cadButtonTapped(_ sender: UIButton) {
        cadButton.isSelected = !cadButton.isSelected
        mxnButton.isSelected = !mxnButton.isSelected
        if cadButton.isSelected {
            fromCurrencyTextField.text = ""
            toCurrencyTextField.text = ""
            currency = .cad
            toCurrencyLabel.text = "Currency (CAD)"
        }
        
    }
    
    @IBAction func mxnButtonTapped(_ sender: UIButton) {
        fromCurrencyTextField.text = ""
        toCurrencyTextField.text = ""
        mxnButton.isSelected = !mxnButton.isSelected
        cadButton.isSelected = !cadButton.isSelected
        if mxnButton.isSelected {
            currency = .mxn
            toCurrencyLabel.text = "Currency (MXN)"
        }
    }
    
    // MARK: - Helper Methods

    func convert(_ dollars: Double) -> Double {
        switch currency {
        case .cad:
            var convertedValue = dollars * 1.33
            return convertedValue
        default:
            var convertedValue = dollars * 18.60
            return convertedValue
        }
    }
}

