import UIKit

// Conversion Rates
// 1 USD -> 1.33 CAD
// 1 USD -> 18.60 MXN

// optional 1.
var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

// 1.
enum Currency {
    case cad
    case mxn
}

// 2.
let usdToCad:Double = 1.33
let usdToMxn:Double = 18.60

// 3.
var currency: Currency = .mxn

// 4-5.
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usdToCad
    case .mxn:
        return dollars * usdToMxn
    }
}

// 6.
func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let amountUnwrap = amount else { return "Invalid Entry" }
    return "\(convert(amountUnwrap))"
}

// 7.
convert(amountString: "Snail")
convert(amountString: "50.00")
convert(amountString: "23.19")
convert(amountString: "0.00")

// optional 2.



