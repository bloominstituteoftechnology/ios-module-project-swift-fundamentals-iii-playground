import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.45
let usToMxn = 24.01

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
        
    case .mxn:
        return dollars * usToMxn
    }
}
var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

// unwrapping the amount string by putting a double eliminates the ""
func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        return nil
    }
    let convertString = convert(amount)
    return String(convertString)
//    return currencyFormatter.string(from: NSNumber(value: convertString))
 
}

print(convert(amountString: "1")!)
