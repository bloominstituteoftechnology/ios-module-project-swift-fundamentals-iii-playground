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
        let dollars = usToCad * 1
        return dollars
        
    } else if currency == .mxn {
        let dollars = usToMxn * 1
        return dollars
    }
    return dollars
}
