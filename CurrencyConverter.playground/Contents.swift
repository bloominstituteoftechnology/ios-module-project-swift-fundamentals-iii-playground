import UIKit

enum Currency: Double {
    case cad = 85
    case mxn = 16
    
}

let usToCad = 1.40
let usToMxn = 23.92

var currency: Currency = .cad



func convert(_ dollars: Double) -> Double {
    var converted: Double
    switch currency {
    case .cad:
        converted = dollars * 1.40
    case .mxn:
        converted = dollars * 23.92
        
    }
    
    return converted
}


func convert2(amountString: String) -> String? {
   
    let amountConversion = Double(amountString)

    guard let unwrappedConversion = amountConversion else {
        return "Failed to convert"
    }
    
    let stringConversion = "US Balance: \(convert(unwrappedConversion))"
        return stringConversion
}

convert2(amountString: "350")

extension String{
     func toCurrencyFormat() -> String {
        if let intValue = Int(self){
           let numberFormatter = NumberFormatter()
           numberFormatter.locale = Locale(identifier: "ig_NG")/* Using Nigeria's Naira here or you can use Locale.current to get current locale, please change to your locale, link below to get all locale identifier.*/
           numberFormatter.numberStyle = NumberFormatter.Style.currency
           return numberFormatter.string(from: NSNumber(value: intValue)) ?? ""
      }
    return ""
  }
}
