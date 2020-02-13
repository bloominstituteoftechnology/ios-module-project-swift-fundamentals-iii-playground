import UIKit

enum Currency {
    case cad
    case mxn
}
var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()


let usToCad: Double = 1.33
let usToMxn: Double = 18.60

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        var convertedCurrency: Double = dollars * usToCad
        currencyFormatter.locale = Locale(identifier: "en_CA")
        return convertedCurrency
    default:
        var convertedCurrency: Double = dollars * usToMxn
        currencyFormatter.locale = Locale(identifier: "es_MX")
        return convertedCurrency
    }
}

func convert(amountString: String) -> String? {
    guard let amount: Double = Double(amountString), amount > 0.00 else {
        return "Please enter a valid number"
    }
    let result = currencyFormatter.string(from: NSNumber(value: convert(amount)))
    return result
}
let test = convert(amountString: "89")
print(test!)
