import UIKit

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

enum Currency {
    case cad
    case mxn
}
let usdToCad = 1.41
let usdToMxn = 23.92
var currency: Currency = .cad


func convert(_ dollars: Double) -> Double {
    
    var convertedDollars = 1.0

    switch currency {
        case .cad:
            convertedDollars =  dollars * usdToCad

        case .mxn:
            convertedDollars =  dollars * usdToMxn
    }
    _ = currencyFormatter.string(from: convertedDollars as NSNumber)

    return Double(convertedDollars)


}

func convert(amountString: String) -> String? {
    
    guard let amount = Double(amountString) else {
        return ""
    }
    let cad = convert(amount)
        return String(cad)
    
//  let mxn = convert(amount)
//      return String(mxn)
    

}

convert(amountString: "20")

