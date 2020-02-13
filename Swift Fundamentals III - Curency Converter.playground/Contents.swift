import UIKit


enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 18.60

var currency: Currency = .mxn

func convert(_dollars: Double) -> Double {
    
    if usToCad > usToMxn {
        return usToCad * _dollars
    } else {
        return usToMxn * _dollars
    }
}

let convertedDollars = convert(_dollars: 100.0)
print(convertedDollars)

func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    
    guard let newAmount = amount else {
        return nil
    }
    
    let convertedAmount = convert(_dollars: newAmount)
    return String(convertedAmount)
   
}

convert(amountString: "100.0")

