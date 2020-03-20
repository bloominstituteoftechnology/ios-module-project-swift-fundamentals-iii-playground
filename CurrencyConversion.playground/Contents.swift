import UIKit

enum Currency {
  case cad
  case mxn
}

// Current exchange rate

let usToCad = 1.45
let usToMxn = 24.01

var currency: Currency = .mxn


// Stretch Goal

let currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

// Converts the falling dollar

func convert(_ dollars: Double) -> Double {
  switch currency {
  case .cad:
    return dollars * usToCad
  case .mxn:
    return dollars * usToMxn
  }
}

func convert(amountString: String) -> String? {
  guard  let amount = Double(amountString) else { return nil }
  
  let currencyConverted = convert(amount)
  

  
  return currencyFormatter.string(from:NSNumber(value: currencyConverted))
  
}


convert(amountString: "5")
