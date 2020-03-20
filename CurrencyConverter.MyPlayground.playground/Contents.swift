import UIKit

// 1.
enum Currency: String {
    case cad = "Canadian Dollar"
    case mxn = "Mexican Peso"
}


// 2.
let usToCad: Double = 1.45
let usToMex: Double = 24.42

// 3.
var currency: Currency = .mxn

// 4. 5.
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        print("Here is your converted \(currency.rawValue) \(usToCad * dollars)")
    case .mxn:
        print( "Here is your converted \(currency.rawValue) \(usToMex * dollars)")
    }
    return dollars

}

convert(50.0)


// 6.
func convert(amountString: String) -> String? {
    guard let ammount = Double(amountString) else {return nil}
    let convertCurrency = convert(ammount)
    return String(convertCurrency)
}

// 7.
convert(amountString: "56.47")


// Go Further 
