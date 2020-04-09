import UIKit



enum Currency {
    case cad
    case mxn
}


let usToCad = 1.40
let usToMxn = 23.71

let currency: Currency = .cad


func convert(dollars: Double) -> Double {
//    var newValue = 0.0
//
//    if currency == .cad {
//        newValue = dollars * usToCad
//
//    } else if currency == .mxn {
//        newValue = dollars * usToMxn
//    }
//
//    return newValue
    
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}



func convert(amountString: String) -> String? {
//    let amount = Double(amountString)
//
//    guard let amountUnwrapped = amount else{
//        return nil
//    }
//    let convertedString = convert(of: amountUnwrapped)
//    return String(convertedString)
    
    guard let amount = Double(amountString) else { return nil }
    let convertedString = convert(dollars: amount)
    return String(convertedString)
}

convert(amountString: "1300.00")
