import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.38
let usToMxn = 21.61

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    var converted: Double = 1.0
    
    switch currency {
    case .cad:
        converted = dollars * usToCad
    case .mxn:
        converted = dollars * usToMxn
    }
    return converted
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        return ""
    }
    let usd = convert(amount)
        return String(usd)
}
convert(amountString: "38")
convert(amountString: "44")
