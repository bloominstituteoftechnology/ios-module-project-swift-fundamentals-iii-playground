import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.33
let usToMxn: Double = 19.70

// Must manually change the currency variable in order to properly see a change in values.
var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
        let value = dollars * usToCad
        return value
    } else {
        let value = dollars * usToMxn
        return value
    }
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        print ("Error: \(amountString) is not a valid string")
        return amountString
    }
    return "The conversion for your selected currency is: \(convert(amount))"
}

convert(amountString: "20")


