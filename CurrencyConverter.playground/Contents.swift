import Cocoa

enum Currency {
    case cad
    case mxn
}

//Conversion rates as of 3/18/20 10:03 PM PDT according to Morningstar
let usToCad: Double = 1.46
let usToMxn: Double = 24.32

class Converter {
    var currency: Currency
    
    init(currency: Currency = .cad) {
        self.currency = currency
    }
    
    func convert(_ dollars: Double) -> Double {
        switch currency {
        case .cad:
            return(dollars * usToCad)
        case .mxn:
            return(dollars * usToMxn)
        }
    }
}

let newCurrency = Converter(currency: .cad)

//Converts USD to CAN/MXN and prints the result as a String in currency format
func convert(amountString: String) -> String {
    guard let amount = Double(amountString),
        amount > 0 else { return "" }
    let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    let originalCurrency = currencyFormatter.string(from: NSNumber(value: amount))!
    let formattedCurrency = currencyFormatter.string(from: NSNumber(value: newCurrency.convert(amount)))!
    print("Your \(originalCurrency) converted to \(newCurrency.currency) is: \(formattedCurrency)")
    newCurrency.convert(amount)
    return amountString
}

var finalConversion = convert(amountString: "20")
