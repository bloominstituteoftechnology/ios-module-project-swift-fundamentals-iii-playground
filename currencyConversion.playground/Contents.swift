import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.40
let usToMxn: Double = 23.93

var currency: Currency = .mxn



func convert(dollars: Double) -> Double {
    var dollars = dollars
    switch currency {
    case .cad:
        dollars = dollars * usToCad
    case .mxn:
        dollars = dollars * usToMxn
    }
    return dollars
}

print(convert(dollars: 20))
print(convert(dollars: 35))

currency = .cad

print(convert(dollars: 20))
print(convert(dollars: 35))

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currencyAccounting
    return formatter
}()

func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    
    guard let Amount2 = amount
        else {
            return "Invalid Input"
    }
    
    let convertedCurrency = convert(dollars: Amount2)
    print("Your \(currency) amount is:")
    return currencyFormatter.string(from: NSNumber(value: convertedCurrency))
}

print(convert(amountString: "40")!)
print(convert(amountString: "100")!)

currency = .mxn

print(convert(amountString: "40")!)
print(convert(amountString: "100")!)

