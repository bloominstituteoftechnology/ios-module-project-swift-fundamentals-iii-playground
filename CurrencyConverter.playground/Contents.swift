import UIKit

enum Currency {
    case cad
    case mxn
}



var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()


let usToCad = 1.40
let usToMxn = 23.63


var currency:Currency = .mxn


func convert(_ dollars: Double) -> Double {
    
    if currency == .cad {
        return usToCad * dollars
    } else if  currency == .mxn {
        return usToMxn * dollars
    } else {
         return dollars
    }
}

func convert(amountString: String) -> String? {
    
    
    guard let amount = Double(amountString) else{return nil}
    
    let convertedAmount = convert(amount)
    
    return currencyFormatter.string(from: NSNumber(value: convertedAmount))
    
}

convert(amountString: "12")



