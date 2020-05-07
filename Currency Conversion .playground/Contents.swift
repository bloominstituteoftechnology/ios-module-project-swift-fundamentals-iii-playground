import UIKit

// $1 USD = $1.40 CAD
// $1 USD = $24.07 MXN

enum Currency {
    case cad
    case mxn
}

let usToCad = 1 / 1.40
let usToMxn = 1 / 24.07

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
        return dollars / 1.40
    } else {
        return dollars / 24.07
    }
}

convert(20)

