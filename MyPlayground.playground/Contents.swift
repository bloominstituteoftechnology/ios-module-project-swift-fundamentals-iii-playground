import UIKit

enum Currency {
    case CAD
    case MXN
}

let usToCad = 1.4
let usToMxn = 23.55

var targetCurrency: Currency = .CAD

// As directed by readme.md
func convert(_ dollars: Double) -> Double {
    switch targetCurrency {
    case .CAD:
        return dollars * usToCad
    case .MXN:
        return dollars * usToMxn
    }
}

// Parameterized approach (better to pass in a parameter than use an instance variable)
func convert(_ dollars: Double, _ conversionCurrency: Currency) -> Double {
    switch conversionCurrency {
    case .CAD:
        return dollars * usToCad
    case .MXN:
        return dollars * usToMxn
    }
}

// As directed by readme.md
func convert(_ amountString: String) -> String? {
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
        fatalError()
    }
    
    let nf = NumberFormatter()
    nf.locale = Locale.init(identifier: "en_US")
    nf.numberStyle = .currency
    
    if targetCurrency == .CAD {
        return nf.string(for: unwrappedAmount * usToCad)
    } else {
        return nf.string(for: unwrappedAmount * usToMxn)
    }
}


// Parameterized approach
func convert(_ amountString: String, _ conversionCurrency: Currency) -> String? {
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
        fatalError()
    }
    
    let nf = NumberFormatter()
    nf.locale = Locale.init(identifier: "en_US")
    nf.numberStyle = .currency
    
    switch conversionCurrency {
    case .CAD:
        return nf.string(for: unwrappedAmount * usToCad)
    case .MXN:
        return nf.string(for:unwrappedAmount * usToMxn)
    }
    
}


print(convert("50.00", .MXN))
