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
    //i know i know
    default:
        print("Uh-oh. This is not where you want to be!")
    }
}
 func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        print("I do not know what you are trying give me, but it's not US Dollars. Love, your developer.")
        return nil
    }
    return String(convert(amount))
}
convert(12.50)
convert(1.00)
currency = .mxn
convert(1.00)
convert(13.00)
