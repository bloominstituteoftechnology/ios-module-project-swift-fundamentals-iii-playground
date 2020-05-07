import UIKit

enum Currency {
     
    case cad
    case mxn
    
}

let usdToCAD = 1.40
let usdToMXN = 24.08

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    switch currency {
        
    case .cad:
        let canadianDollars = dollars * usdToCAD
        return canadianDollars
        
    case .mxn:
        let pesos = dollars * usdToMXN
        return pesos
        
    default:
        print("Hi, developer here. You shouldn't be here, but if you are, please take a moment to remember all the developers hard at work right now keeping our society alive. Please remember that the next time you consider torrenting an app rather than paying 99 cents. Have a great day! <3")
    }
}

