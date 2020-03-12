import UIKit

//Enumerators
enum Currency {
    case mxn
    case cad
    case usd
}

//Variable Declarations
let us = 1.00
let usToCad = 1.38
let usToMxn = 22.18
var currency: Currency = Currency.cad


//Convert US to Desired Currency
func convert(_ dollars: Double) -> Double {
    
    var result: Double = 0
    
    switch(currency)
    {
    case .mxn:
        result = dollars * usToMxn
        break
        
    case .cad:
        result = dollars * usToCad
        break
    case .usd:
        result = dollars
    }
    
    return result
}

print(convert(50.69))

currency = .cad

//Converts Amount using a String
func convert_2(amountString: String) -> String {
    let amount = Double(amountString)
    
    guard let amt = amount else {
        return "Nothing"
    }
    
    return String(convert(amt))
}

print(convert_2(amountString: "2.00"))


let formatter = NumberFormatter()
formatter.numberStyle = .currency
formatter.locale = Locale(identifier: "fr_CA")

let myResult = formatter.string(from: NSNumber(value: convert( 50.20)))

print(myResult ?? 0.00)

