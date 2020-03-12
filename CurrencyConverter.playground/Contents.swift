import UIKit

enum Currency {
    case usd
    case cad
    case mxn
}



let usToCad = 1.38
let usToMxn = 21.92


var currency = Currency.mxn

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    case .usd:
        return dollars
    }
}

func covert(amountString: String) -> String? {
   // let amount = Double(amountString)
    guard let amount = Double(amountString) else {
        return " "
    }
    return String(amount)
}
print(covert(amountString: "500") ?? " ")

print(convert(65))
print(convert(30))






    


    


    

