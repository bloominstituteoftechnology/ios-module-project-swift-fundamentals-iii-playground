import UIKit
//1 usd = 1.40 cad
// 1 usd = 23.54 mxn

enum Currency: Double {
    case cad
    case mxn
}
let usdToCad: Double = 1.40
let usdToMxn: Double = 23.54
var currency: Currency = .cad
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
    let canadianDollars = dollars * usdToCad
        return canadianDollars
    case .mxn:
    let mexicanPesos = dollars * usdToMxn
        return mexicanPesos
    //i know i don't need this but i think this is my signature
    default:
        print("Uh-oh. This is not where you want to be!")
    }
}
