import UIKit

// convert from usd to cad and mxn


// May 17 2020 canadian dollar $1 USD to $1.41
// May 17 2020 mexican peso $1 USD to $23.96 MXN

//1
enum Currency {
    case cad
    case mxn
}

//2
let usToCad: Double = 1.41
let usToMxn: Double = 23.96

//3
var currency = Currency.cad
//var currency = Currency.mxn

//4-5
func convert(dollars: Double, currency: Currency) -> Double {
    var amount: Double = 1
    
    switch currency {
    case .cad:
        amount = dollars * usToCad
    case .mxn:
        amount = dollars * usToMxn
    }
    
    return amount
}

print(convert(dollars: 3, currency: .mxn))
print(convert(dollars: 3, currency: .cad))

//6

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
        return "Not able to convert"
    }
    let result = String(convert(dollars: unwrappedAmount, currency: .cad))
    
    print(result)
    
    return result
}

convert(amountString: "6")

// need to get rid of printed optional when print is on outside of function
