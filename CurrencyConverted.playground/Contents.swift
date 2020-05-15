import UIKit

enum Currency {
    case cad
    case mxn
}


let usToCad = 1.41
let usToMxn = 24.05

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    
    var convertedValue: Double = 1.0
    
    switch currency {
    case .cad:
        convertedValue = dollars * usToCad
    case .mxn:
        convertedValue = dollars * usToMxn
    }
    
    return convertedValue
}



func convert(amountString: String) -> String? {
    
    guard let amount = Double(amountString) else { return nil }
    
    let usDollar = convert(amount)
    
    return String(usDollar)
}



convert(amountString: "78")  //  .cad

convert(amountString: "154") //  .mxn

