import UIKit

enum Currency {
    case CAD
    case MXN
}

let usToCad = 1.40
let usToMxn = 23.90


var currency: Currency = .CAD

func convert(_ dollars: Double) -> Double {
    var convertedAmount: Double = 0
    
    if currency == .CAD {
        convertedAmount = dollars * 1.40
    } else if currency == .MXN {
        convertedAmount = dollars * 23.90
    }
    return convertedAmount
}

func convert2(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
     return "Invalid Input"
    }
    return ("Converted currency: \(convert(unwrappedAmount))")
}

convert2(amountString: "12")

currency = .MXN

convert2(amountString: "15")
