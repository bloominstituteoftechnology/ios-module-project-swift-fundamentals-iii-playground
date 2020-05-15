import UIKit

/*
On May 13, 2020
    $1 USD = $1.41 CAD
    $1 USD = $24.21 MXN
*/

enum Currency: String {
    case cad = "CAD"
    case mxn = "MXN"
}

let usToCad = 1.41
let usToMxn = 24.21

var currency = Currency.cad

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
        return nil
    }
    let convertedAmount = convert(unwrappedAmount)
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    if let formattedAmount = formatter.string(for: convertedAmount) {
        print("\(formattedAmount) \(currency.rawValue)")
        return "\(formattedAmount) \(currency.rawValue)"
    } else {
        return nil
    }
}

convert(amountString: "15.00")
convert(amountString: "25.00")

currency = Currency.mxn

convert(amountString: "15.00")
convert(amountString: "25.00")
