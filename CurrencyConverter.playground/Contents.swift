import UIKit

var str = "Hello, playground"
enum Currency {
    case cad
    case mxn
}
let usToCad = 1.40
let usToMxn = 24.08

var currency: Currency = .cad

func convert(dollars: Double) -> Double {
    
    if currency == .cad {
        return dollars * usToCad
    } else {
        return dollars * usToMxn
    }
    
}
convert(dollars: 10.00)
print(convert(dollars: 10.00), currency)

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
        return amountString
    }

convert(amountString: "ten")

