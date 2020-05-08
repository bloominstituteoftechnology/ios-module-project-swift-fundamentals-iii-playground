//Bryan Cress
//currency converter
import UIKit


enum Currency {
    case cad
    case mxn
}


let usToCad = 1.14
let usToMex = 23.97

var currency: Currency = .cad



// this function helps convert the us dollar into the current price for the Candaian and Mexican dollar depending on which you pass though
func convert(_ dollars: Double, convertedCurrency: Currency) -> Double {
    switch convertedCurrency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMex
    }
}


//    if currency == Currency.cad {
//        return dollars * usToCad
//    } else {
//        return dollars * usToMex
//    }
//}


convert(100, convertedCurrency: .cad)





// this function converts a
func convert(amountString: String) -> String? {
    guard let unwrappedAmount = Double(amountString) else {
        return nil
    }
    let convertedString = convert(1, convertedCurrency: .mxn)
    return String(convertedString)
}

convert(amountString: "1.00")




// stretch goal

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

















