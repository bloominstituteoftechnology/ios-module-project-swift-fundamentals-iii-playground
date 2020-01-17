import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.30
let usToMxn: Double = 18.80

let currency: Currency = .mxn

func convert(_dollars: Double) -> Double {
    
    switch currency {
    case .cad:
        return usToCad * _dollars
    case .mxn:
        return usToMxn * _dollars
    }
}

let conversions = convert(_dollars: 1.0)
print(conversions)


func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
        return nil
    }
    let convertedAmount = convert(_dollars: unwrappedAmount)
    return String(convertedAmount)
}

convert(amountString: "10.0")


