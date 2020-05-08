import UIKit

var str = "Hello, playground"


// Currency Conversion

// $1 USD to $1.40 CAD
// $1 USD to $24.06 MXN

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 24.06

var currency: Currency? = .cad // change here and it still works

   func convert(dollars: Double) -> Double {
    if currency == .cad {
       let newAmount = dollars * usToCad
        print("\(convertDoubleToCurrency(amount: dollars)) American  = \(convertDoubleToCurrency2(amount: newAmount)) Canadian")
    } else if currency == .mxn  {
        let otherAmount = dollars * usToMxn
            print("\(convertDoubleToCurrency(amount: dollars)) = \(convertDoubleToCurrency(amount: otherAmount)) Pesos")
        }
    return dollars
}

func convertDoubleToCurrency(amount: Double) -> String {
      let numberFormatter = NumberFormatter()
      numberFormatter.numberStyle = .currency
    numberFormatter.locale = Locale.current // US Currency which is similar to Mexico
      
      return numberFormatter.string(from: NSNumber(value: amount))!
  }
    
func convertDoubleToCurrency2(amount: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .currency
    numberFormatter.locale = Locale(identifier: "fr_CA") // French Canadian currency format
    
    return numberFormatter.string(from: NSNumber(value: amount))!
}

convert(dollars: 12)
convert(dollars: 309)
convert(dollars: 6470)

func convert2(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let unwrappedAmount = amount else {
        return amountString
    }
    print(convert(dollars: unwrappedAmount))
  return String(unwrappedAmount)
}

convert2(amountString: "3")
convert2(amountString: "16")
