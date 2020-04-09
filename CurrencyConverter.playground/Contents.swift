import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 23.67
let currency: Currency = .cad

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

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
    guard let amount = Double(amountString) else { return nil }
    
   let dollars = convert(dollars: amount)
     
    return String(dollars)
}

convert(amountString: "54")





