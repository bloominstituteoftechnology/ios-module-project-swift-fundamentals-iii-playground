import UIKit

enum Currency {
    case cad
    case mxn
    
    
    }
 
    

let usToCad = 1.40
let usToMxn = 23.63


var currency:Currency = .cad


func convert(_ dollars: Double) -> Double {

    if currency == .cad {
        
        return usToCad * dollars
        
    } else if  currency == .mxn {
        
        return usToMxn * dollars
   
    } else {
        
        return dollars
    }
}

func convert(amountString: String) -> String? {
    
    
    guard let amount = Double(amountString) else{return nil}
        
    let newAmount = convert(amount)
    
    return String(newAmount)

}


convert(amountString: "12")



