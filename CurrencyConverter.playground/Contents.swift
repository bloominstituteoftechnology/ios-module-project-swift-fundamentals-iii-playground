import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 23.67
let currency: Currency = .cad

func convert(dollars: Double) -> Double {
    
    if currency == .cad {
        let cadConversion = dollars * usToCad
        return cadConversion
    } else if currency == .mxn {
        let mxnConversion = dollars * usToMxn
        return mxnConversion
        }
    return dollars
}

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let amountString = amount else {
        return "Not a valid value"
    }
convert(dollars: amountString)
    return String(convert(dollars: amountString))
}

convert(amountString: "54")
