import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMxn = 18.78

var currency: Currency = .mxn

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

func convert(dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

func convert(_ amountString: String) -> String? {
    
    guard let amount = Double(amountString) else {
          
        return nil
    }
    return currencyFormatter.string(from: NSNumber(value: convert(dollars: amount)))

}

var convertedValue = convert("10")
print(convertedValue)

currency = .cad

convertedValue = convert("10")
print(convertedValue)
