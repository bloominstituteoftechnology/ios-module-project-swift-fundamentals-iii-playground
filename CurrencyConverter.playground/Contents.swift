import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.38
let usToMxn = 21.92

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .cad:
       return dollars * usToCad
    case .mxn:
       return dollars * usToMxn
    }
}

convert(15)
convert(649)

currency = .mxn

convert(15)
convert(649)

func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    guard let doubleAmount = amount else {
        return " "
    }
    return String(convert(doubleAmount))
}

convert(amountString: "15")
convert(amountString: "390")

currency = .cad

convert(amountString: "15")
convert(amountString: "390")


