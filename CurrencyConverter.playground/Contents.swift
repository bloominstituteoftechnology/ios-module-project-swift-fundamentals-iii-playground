import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.33
let usToMxn: Double = 19.70

var currency: Currency = .mxn

func conversion(_ dollars: Double) -> Double {
    if currency == .cad {
        let convertedCad = usToCad * dollars
        return convertedCad
        
    } else if currency == .mxn {
        let convertedMxn = usToMxn * dollars
        return convertedMxn
    }
    return dollars
}

conversion(20)

func convert(_ amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        return amountString
    }
    conversion(amount)
    return String(amount)
}

convert("20")
