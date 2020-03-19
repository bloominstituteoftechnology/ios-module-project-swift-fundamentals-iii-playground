import UIKit

enum Currency: String{
    case cad = "Canadian Dollars"
    case mnx = "Mexican Pesos"
}

let usToCad = 1.45
let usToMxn = 24.48

let currency: Currency = .cad

func convertMoney(_ dollars: Double) -> Double{
    
    print("You are converting \(currency.rawValue) currently.")
    let convertedValue = usToCad * dollars
    print("\nThe current exchange is \(convertedValue) \(currency.rawValue) per \(dollars) US Dollar.")
    
    return convertedValue
}

func convert(amountString: String) -> String?{
    guard let amount = Double(amountString), amount > 0 else{
        print("Invalid Amount: \(amountString)")
        return amountString
    }
    
    convertMoney(amount)
    return amountString
}

convert(amountString: "50")
