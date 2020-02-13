import UIKit

// CAD is 1.33/1 USD
// MXN is 18.59/1 USD

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 18.59

var currency: Currency = .cad

// Helper method
func convert(_ dollars: Double) -> Double {
    var newCurrency: Double = 0.0
    
    if(currency == .cad) {
        newCurrency = dollars * usToCad
    }
    else if (currency == .mxn) {
        newCurrency = dollars * usToMxn
    }
    return newCurrency
}

func convert(amountString: String) -> Double? {
    
    guard let amount = Double(amountString) else{
        return nil
    }
    return convert(amount)
}

currency = .mxn

convert(amountString: "200")

currency = .cad

convert(amountString: "This will return nil because it's not a number")



// Stretch goals

let currencyFormatter = NumberFormatter()
currencyFormatter.usesGroupingSeparator = true
currencyFormatter.numberStyle = .currency
// localize to your grouping and decimal separator

let amount = currencyFormatter.string(for: convert(amountString: "200"))

currencyFormatter.string(from: 20)
