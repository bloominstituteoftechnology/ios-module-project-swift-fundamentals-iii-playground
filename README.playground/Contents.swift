import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMxn = 20.32
var currency: Currency = .cad

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
    let resultString = String(conversionResult)
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
