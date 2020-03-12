import UIKit

enum Currency: Double {
    case cad = 1.38
    case mxn = 21.63
}

// I wanted to see if I could put the values of the conversion as the rawValue of the type that I would switch on later to trim lines of code
//let usToCad = 1.38
//let usToMxn = 21.63

let currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

class CurrencyConverter {
    var currencyType: Currency
    var amount: Double
    
    init(currencyType: Currency, amount: Double) {
        self.currencyType = currencyType
        self.amount = amount
    }
    
    func convert(_ dollars: Double) -> Double {
        switch currencyType {
        case .cad:
            currencyFormatter.locale = Locale(identifier: "fr_CA")
            return dollars * currencyType.rawValue
        case .mxn:
            // This identifier doesn't want to show as a peso symbol even though this is what apples website says would be the code for Mexico
            currencyFormatter.locale = Locale(identifier: "es_MX")
            return dollars * currencyType.rawValue
        }
    }
}

//let myCurrency = CurrencyConverter(amount: 20)
//myCurrency.convert(myCurrency.amount)

func convert(country: Currency, amountString: String) -> String? {
    let amount: Double? = Double(amountString)
    guard let unwrappedAmount = amount else { return nil }
    
    let conversion = CurrencyConverter(currencyType: country,amount: unwrappedAmount)
    let newAmount = conversion.convert(conversion.amount)
    
    let convertedCurrency = currencyFormatter.string(from: NSNumber(value: newAmount))
    
    return convertedCurrency
}

let convertedAmount = convert(country: .mxn, amountString: "30.53")

if let convertedAmount = convertedAmount {
    print(convertedAmount)
}
