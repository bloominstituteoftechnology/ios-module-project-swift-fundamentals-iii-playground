import UIKit

//Create a currency type enum below the import statements.

enum Currency: Double {
    case cad
    case mxn
}

// Create a constant called usToCad and set its value to the current conversion value. Do the same for a new constant called usToMxn.

let usToCad = 1.33

let usToMxn = 18.60

//Create a property named currency of type Currency. This will store the current currency type we'll be converting to. Set an initial value of .cad.
                        // USD
let currency: Currency = .mxn

// Check the value of currency to see whether you should convert to CAD or MXN
//Perform the conversion with the dollars passed into this method
//Return the converted value


func convert(_ dollars: Double) -> Double {

    if currency == .cad {
        
        print("This is the conversion for USD to CAD: \(usToCad)")
            return dollars * usToCad
        
    } else if currency == .mxn {
        
        print("This is the conversion for USD to MXN: \(usToMxn)")
            return dollars * usToMxn
     
    }
    return 0
}

print(convert(25))


//create a constant called amount. Its value should be the amountString that is initialized into a Double
//use a guard let to unwrap the new amount constant.
//convert the dollar amount to the expected currency

func convert(amountString: String) -> String? {
    
    // printing out in string form ...
    
    guard let amount = Double(amountString) else {
            return nil
        
    }
        let convertedCurrency = convert(amount)
        return String(convertedCurrency)
}

convert(amountString: "30")
