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

func convert(amountString: String) -> String? {
    
    
    guard let amount = Double(amountString) else {
        
        print("Hi, I don't know what this is, but it's not USD. Please restart your app. Love, your Developer!")
        return nil
    }
    
    return String(convert(amount))
    
}

convert(amountString: "12.50")
convert(amountString: "35.75")
convert(amountString: "75398433445434.23")

currency = .mxn

convert(amountString: "34.75")
convert(amountString: "2156.23")
convert(amountString: "8495743987515.45")
