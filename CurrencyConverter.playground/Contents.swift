import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.33
let usToMxn: Double = 19.70

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
        let value = dollars * usToCad
        return value
    } else {
        let value = dollars * usToMxn
        return value
    }
}
