import UIKit



enum Currency {
    case cad
    case mxn
}

let usToCad = 1.45
let usToMxn = 23.98

let currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
       return dollars * usToMxn
        
    }
        
}
convert(11.00)

func convert(amountString: String) -> String? {
    let currencyFormatter = NumberFormatter()
    let amount = Double(amountString)
    guard let amountInString = amount,
                amountInString > 0 else {
                    print("Invalisd amonunt to withdraw")
         return  amountString
}
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.numberStyle = .currency
    currencyFormatter.locale = Locale.current

    let priceString = currencyFormatter.string(from: NSNumber(value: convert(amountInString)))!
    
    return priceString
}



convert(amountString: "ee")




