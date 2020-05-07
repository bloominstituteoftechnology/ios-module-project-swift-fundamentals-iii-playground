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

var currency: Currency? = .cad

   func convert(dollars: Double) -> Double {
    if currency == .cad {
       let newAmount = dollars * usToCad
        print("\(convertDoubleToCurrency2(amount: newAmount))")
    } else if currency == .mxn  {
        let otherAmount = dollars * usToMxn
            print("\(convertDoubleToCurrency(amount: otherAmount))")
        }
    return dollars
}

func convertDoubleToCurrency(amount: Double) -> String {
      let numberFormatter = NumberFormatter()
      numberFormatter.numberStyle = .currency
      numberFormatter.locale = Locale(identifier: "es_MX")
      
      return numberFormatter.string(from: NSNumber(value: amount))!
  }
    
func convertDoubleToCurrency2(amount: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .currency
    numberFormatter.locale = Locale(identifier: "fr_CA")
    
    return numberFormatter.string(from: NSNumber(value: amount))!
}

convert(dollars: 12)
convert(dollars: 309)
convert(dollars: 6470)


