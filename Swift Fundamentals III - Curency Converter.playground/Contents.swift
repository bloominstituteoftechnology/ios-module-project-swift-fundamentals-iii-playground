import UIKit


enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 18.60

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    if usToCad > usToMxn {
        return usToCad * dollars
    } else {
        return usToMxn * dollars
    }
}

let convertedDollars = convert(100.0)
print(convertedDollars)


func convert(amountString: String) -> Sting? {
    
    let amount = Double(amountString)
    
    guard let newAmount = amount else {
        return nil
    }
    
    let convertedAmount = convert(newAmount)
    return String(convertedAmount)
   
}

convert(10.0)
