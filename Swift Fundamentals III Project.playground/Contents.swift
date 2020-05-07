import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.4
let usToMxn = 24.03

func convert(dollars: Double, currency: Currency) -> Double {
    switch currency {
    case Currency.cad:
        let convertedAmount = dollars * usToCad
        return convertedAmount
    case Currency.mxn:
        let convertedAmount = dollars * usToMxn
        return convertedAmount
    default:
        print("That's not right.")
        return 0.0
    }
    
/*
 init(dollars: Double, currency: Currency, amountString: Double) {
        self.dollars = dollars
        self.currency = currency
        self.amountString = amountString
*/
    
    }
    
    func amountString(amountString: Double) -> String? {
        guard let amount == amountString else {
            return "oops"
        }
        }
}

print(convert(dollars: 10.00, currency: Currency.cad))


