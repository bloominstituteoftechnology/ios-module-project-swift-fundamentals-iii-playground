import UIKit

enum Currency: String{
    case cad = "Canadian Dollars"
    case mnx = "Mexican Pesos"
}

let usToCad = 1.45
let usToMxn = 24.48

class Conversion {
    var currency: Currency
    
    init(currency: Currency){
        self.currency = currency
    }
    
    func convertMoney(_ dollars: Double) -> Double{
        switch currency {
        case .cad:
            print("You are converting \(currency.rawValue) currently.")
            let newConversion = dollars * usToCad
            print("\nThe current exchange is \(newConversion) \(currency.rawValue) per \(dollars) US Dollar(s).")
            return newConversion
        case .mnx:
            print("You are converting \(currency.rawValue) currently.")
            let newConversion = dollars * usToMxn
            print("\nThe current exchange is \(newConversion) \(currency.rawValue) per \(dollars) US Dollar(s).")
            return newConversion
        }
    }
    
}

let conversionCurrency = Conversion(currency: .cad)

func convert(amountString: String) -> String?{
    guard let amount = Double(amountString), amount > 0 else{
        print("Invalid Amount: \(amountString)")
        return amountString
    }
    conversionCurrency.convertMoney(amount)
    return amountString
}

let solutionConversion = convert(amountString: "50")

