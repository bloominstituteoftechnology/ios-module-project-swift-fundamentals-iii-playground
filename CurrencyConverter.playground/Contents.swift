import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.45
let usToMxn = 24.07

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
     return  usToCad * dollars
    default:
     return usToMxn * dollars
    }
    
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString)  else { return nil }
    let convertCurrency = convert(amount)
    print(convertCurrency)
    return String(convertCurrency)
           }
convert(amountString: "42.0")
currency = .mxn
convert(amountString: "42.0")

