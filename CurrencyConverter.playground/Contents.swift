import UIKit

// US to CAD is $1 US to $1.45 CAD
// US to Mexican Peso is $1 US to $24.19 Mexican Peso

enum Currency {
    case CAD
    case MXN
}

let usToCad: Double = 1.45
let usToMxn: Double = 24.19



class currency {
    var currency: Currency
    init(currency: Currency = .CAD){
        self.currency = currency
    }
func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .CAD:
        return dollars * usToCad
    case .MXN:
        return dollars * usToMxn
    default:
        return dollars * dollars
        }
    }
}

var currentCurrency = currency(currency: .CAD)


func convert(amountString: String) -> String? {
    
    guard let amount = Double(amountString) else {return nil}
    
    var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    let money = currencyFormatter.string(from:NSNumber(value: amount))!
    let formattedMoney = currencyFormatter.string(from: NSNumber(value: currentCurrency.convert(amount)))!
    print("Your amount of \(money) has been converted to \(currentCurrency.currency) \(formattedMoney)")
    return String(amountString)
}
convert(amountString: "5000.00")
currentCurrency = currency(currency: .MXN)
convert(amountString: "5000.00")



