import UIKit

// $1 USD = $1.40 CAD
// $1 USD = $24.07 MXN

enum Currency {
    case cad
    case mxn
}

let usToCad = 1 / 1.40
let usToMxn = 1 / 24.07

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
        return dollars * usToCad
    } else {
        return dollars * usToMxn
    }
}

convert(20)

func convert2(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
        return nil
    }
    // Return unwrappedAmount as a String?
    let myString = String(convert(unwrappedAmount))
    return myString
}

convert2(amountString: "20")
