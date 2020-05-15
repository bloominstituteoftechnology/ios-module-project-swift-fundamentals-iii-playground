import UIKit

enum Currency {
    case cad
    case mxn
    
}
let usToCad = 1.40
let usToMxn = 23.92

func convert(_ dollars: Double) -> Double {

    let currency = Currency.cad

switch currency {
case .cad:
    return dollars * 1.40
case .mxn:
    return dollars * 23.92
}

}

convert(250.00)

func convert2(amountString: String) -> String? {
    let amount = amountString
    let amountConversion = Double(amount)
    
    guard let unwrappedAmount = amountConversion else {
        return "Error"
    
    
    }
    print(convert(unwrappedAmount))
    
    return ("Total Converted Currency: \(convert(unwrappedAmount))")
}
convert2(amountString: "400.00")



var currencyFormatter: NumberFormatter {
let formatter = NumberFormatter()
formatter.numberStyle = .currency
return formatter
}

