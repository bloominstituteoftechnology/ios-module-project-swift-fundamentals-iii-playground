import UIKit

enum Currency{
    case cad
    case usd
    case mxn
}

let usToCad: Double = 1.40
let usToMxn: Double = 23.50


var currency: Currency = .cad

func checkValue(_ dollars: Currency) -> Double {
    if dollars == Currency.cad{
        return usToCad
    }else {
        return usToMxn
    }
}
checkValue(Currency.mxn)

func convert(amountString: String?) -> String?{
    guard let amount = amountString else {
        
        return ch
        
    }
}
