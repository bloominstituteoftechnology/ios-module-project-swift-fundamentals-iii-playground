import UIKit

var str = "Hello, playground"


// Currency Conversion

// $1 USD to $1.40 CAD
// $1 USD to $24.06 MXN

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 24.06

var currency: Currency? = .mxn

   func convert(dollars: Double) -> Double {
    if currency == .cad {
       let newAmount = dollars * usToCad
        print(newAmount)
    } else if currency == .mxn  {
        let otherAmount = dollars * usToMxn
            print(otherAmount)
        }
    return dollars
}


    

   convert(dollars: 12)
