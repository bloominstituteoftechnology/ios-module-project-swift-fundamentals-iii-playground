import UIKit


enum Currency {
    case cad
    case mxn

}
 
let usToCad = 1.41
let usToMxn = 23.93


let currency = Currency.mxn //currency type you are converting to
             
func convert(_ dollars: Double, currencyType: Currency) -> Double {

    var convertedUSD: Double = 1.00
    
    switch currencyType {
    case .cad:
        convertedUSD = dollars * usToCad
        
    case .mxn:
        usToMxn
        convertedUSD = dollars * usToMxn
    
        
    }

return convertedUSD
}

print(convert(10, currencyType: .cad))







func convert(amountString: String) -> String? {
    
let amount = Double(amountString)
    guard let unwrappedAmount = amount else {return "connot convert to double"}
    
    
    
    let newTotal = convert(unwrappedAmount, currencyType: .cad)

    let newAmount = String(newTotal)
    
    
   
    return newAmount
}
let convertedAmount = convert(amountString: "10")
print(convertedAmount as Any)
