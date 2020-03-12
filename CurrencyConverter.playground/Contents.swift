import UIKit

// Conversion Rates
// 1 USD -> 1.33 CAD
// 1 USD -> 18.60 MXN

// optional 1-2
let formatter1 = NumberFormatter()
formatter1.numberStyle = .currency

func formatNumber(_ amount: Double) -> String {
    formatter1.string(for: amount) ?? "Error"
}

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
    return formatNumber(convert(amountUnwrap))
}

// 7.
let result1 = convert(amountString: "Snail")
let result2 = convert(amountString: "50.00")
let result3 = convert(amountString: "23.19")
let result4 = convert(amountString: "0.00")




