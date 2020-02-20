import UIKit


enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 19.70
let currency: Currency = .cad


func convert(_ dollars: Double) -> Double {
       
    if currency == .cad {
        let conversion1 = dollars * usToCad
        return conversion1
    } else if currency == .mxn {
        let conversion2 = dollars * usToMxn
        return conversion2
    }
}


