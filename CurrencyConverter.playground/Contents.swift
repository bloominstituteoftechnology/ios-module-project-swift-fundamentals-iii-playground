import UIKit

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

enum Currency {
    
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 24.07


var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .cad:
        print(dollars * usToCad)
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

func convert(amountString: String) -> String  {
    
    guard let amount = Double(amountString) else { return " "}
    let convertedAmount = convert(amount)
    
    guard let currencyStyle = currencyFormatter.string(from: NSNumber(value: convertedAmount)) else { return " "}
    switch currency {
    case .cad:
        return "\(currencyStyle) cad"
    case .mxn:
        return "\(currencyStyle) pesos"
    }
    
    
}

print(convert(amountString: "13"))

