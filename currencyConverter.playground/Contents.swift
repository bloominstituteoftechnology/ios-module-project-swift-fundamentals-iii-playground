import UIKit
enum Currency {
    case cad
    case mxn
}
let usdToCad: Double = 1.39
let usdToMxn: Double = 21.71
var currency = Currency.cad
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
     return dollars * usdToCad
    case .mxn:
     return dollars * usdToMxn
    }
}
func convert(amountString: String) -> String?{
    guard let amount = Double(amountString) else{
        return "empty string"
    }
    let dollar = convert(amount)
    print(String(dollar))
    return String(dollar)
}
convert(amountString: "27356.57")
currency = .mxn
convert(amountString: "165987.65")

