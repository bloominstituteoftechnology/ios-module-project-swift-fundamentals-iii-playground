import UIKit

var str = "Hello, playground"

enum Currency {
    case cad
    case mxn
}


var currency: Currency = .cad
/// This function creates the conversion process / / /

func convert(dollars: Double) -> Double {
/// If this is CAD/MXN then convert to US dollars ///
    if currency == .cad {
        return dollars * 1.4
    }else if currency == .mxn {
            return dollars * 23.92
        }
        return dollars
    }

/// This function creates a string / / /
func convert2(amountString: String) -> String? {
        let amount = amountString
        let amountConversion = Double(amount)
        guard let unwrappedAmount = amountConversion else {
            return "Error"
        }
    return("Total Converted Currency: \(convert(dollars: unwrappedAmount))")
    
}
convert2(amountString: "12.00")
currency = .cad
convert(dollars: 14.50)
convert2(amountString: "14.50")
