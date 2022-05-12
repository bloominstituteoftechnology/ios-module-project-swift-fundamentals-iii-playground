import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMxn = 20.32
var currency: Currency = .cad

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

func convert(_ dollars: Double) -> Double {
    var result = 0.0
    switch currency {
    case .cad:
        result = dollars * usToCad
    case .mxn:
        result = dollars * usToMxn
    }
    return result
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else { return "Amount string could not be converted" }
    let conversionResult = convert(amount)
    var resultString = ""
    
    switch currency {
    case .cad:
        currencyFormatter.currencyCode = "CAD"
        currencyFormatter.currencySymbol = "C$"
        currencyFormatter.currencyDecimalSeparator = "."
        currencyFormatter.currencyGroupingSeparator = ","
        currencyFormatter.internationalCurrencySymbol = "C$"
    case .mxn:
        currencyFormatter.currencyCode = "MXN"
        currencyFormatter.currencySymbol = "MX$"
        currencyFormatter.currencyDecimalSeparator = "."
        currencyFormatter.currencyGroupingSeparator = ","
        currencyFormatter.internationalCurrencySymbol = "MX$"
    }
    
    if let unwrappedString = currencyFormatter.string(from: conversionResult as NSNumber) {
        resultString = unwrappedString
    } else {
        resultString = "Number formatting failed."
    }
    
    return resultString
}

print(convert(100))
if let successfulConversion = convert(amountString: "100") {
    print(successfulConversion)
}

currency = .mxn

print(convert(100))
if let successfulConversion = convert(amountString: "100") {
    print(successfulConversion)
}




