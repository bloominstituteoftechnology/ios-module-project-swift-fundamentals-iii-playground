import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.4
let usToMxn = 24.03

func convert(dollars: Double, currency: Currency) -> Double {
    switch currency {
    case .cad:
        let convertedAmount = dollars * usToCad
        return convertedAmount
    case .mxn:
        let convertedAmount = dollars * usToMxn
        return convertedAmount
    default:
        print("That's not right.")
        return 0.0
    }
}
    
    
func convert2(amountString: String, currency: Currency) -> String? {
    let amount = Double(amountString)
        
    guard let unwrappedAmount = amount else {
            return nil
        }
        
    switch currency {
        
    case .cad:
        let conversionRate = usToCad
        let convertedAmount = String(unwrappedAmount * conversionRate)
        return convertedAmount
        
    case .mxn:
        let conversionRate = usToMxn
        let convertedAmount = String(unwrappedAmount * conversionRate)
        return convertedAmount
        
    default:
        break
    }
    
}


print(convert(dollars: 10.00, currency: Currency.cad))

convert2(amountString: "45.50", currency: .mxn)
