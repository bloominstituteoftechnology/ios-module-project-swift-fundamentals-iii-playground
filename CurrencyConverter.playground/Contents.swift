import UIKit



enum Currency {
    case cad
    case mxn
    
}

let usToCAD: Double = 1.30
let usToMXN: Double = 18.81
var currency: Currency = .cad

func converter() {
    var currency: Currency
}


func convert(dollars: Double) -> Double {
    switch currency {
        
    case .cad:
       return dollars * usToCAD
        
    case .mxn:
       return dollars * usToMXN

    }
}


func convert(amountString: String) -> String? {
    
    guard let amount = Double(amountString) else {
        return nil
    }
    let result = convert(dollars: amount)
    return String(result)
    
    
    
    
    
}






