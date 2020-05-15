import UIKit

enum Currency {
    case cad
    case mxn
}
let usdToCad = 1.41
let usdToMxn = 23.92
var currency: Currency = .cad


func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .cad:
        return dollars * usdToCad
    case .mxn:
        return dollars * usdToMxn
    }
}
