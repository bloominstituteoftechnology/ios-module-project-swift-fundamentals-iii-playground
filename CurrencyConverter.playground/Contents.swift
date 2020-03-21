import UIKit

var str = "Hello, playground"


enum Currency {
    case cad
    case mxn
}

var usToCad = 1.44
var usToMex = 24.42

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    let can = usToCad * dollars
    let mex = usToMex * dollars
    switch currency {
    case .cad:
        print("Canadian Dollar \(can)")
    case .mxn:
        print("Mexican Peso \(mex)")
    default:
        print("")
    }
    return dollars
}
//convert(20)

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        print("Not valid")
        return amountString
    }
    let convertToAmount = convert(amount)
    let converToString = String(convertToAmount)
    return converToString
    
}

convert(amountString: "20")
