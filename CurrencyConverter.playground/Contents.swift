import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.4
let usToMex = 23.97

let currency: Currency = .cad

func convert (_ dollars: Double) -> Double {
    if currency == Currency.cad {
        return dollars * usToCad
    } else {
        return dollars * usToMex
    }
}

print(convert(30))

func convert2(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
        return nil
    }
    
    return String(convert(unwrappedAmount))
    
}

convert2(amountString: "40")

