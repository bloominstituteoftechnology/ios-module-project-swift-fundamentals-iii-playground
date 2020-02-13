import UIKit


enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 18.60

var currency: Currency = .cad
 


func convert(_ dollars: Double) -> Double {
    
    if usToCad > usToMxn {
        print("The Canadian dollar is stronger than the Mexican Peso.")
    } else {
        print("The Mexican Peso is strong that the Canadian dollar.")
    }
    
    let convertedDollars = dollars * usToCad
    return convertedDollars
    
}

convert(10.0)

func convert(amountString: String) -> Sting? {
    
    let amount = Double(amountString)
    
    guard let newAmount = amount else {
      amount Currency.cad
        
    }
   
}
