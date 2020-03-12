import UIKit
// Create a currency type enum below the import statements.

enum Currency {
    case cad
    case mxn
    case usd
}

/*Create a constant called usToCad and set its value to the current conversion value (googling usd to cad should give you the value).
 Do the same for a new constant called usToMxn.
 */

let usToCad = 1.38
let usToMxn = 21.58

// Create a property named currency of type Currency. This will store the current currency type we'll be converting to. Set an initial value of .cad

var currency = Currency.cad


// Create a helper method to calculate the currency based on the Currency using the method signature:

func convert(_ dollars: Double) -> Double {
    
    switch currency
    {
    case.cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    case .usd:
        return dollars
    }
}

currency = Currency.mxn

convert(250.75)

/*
 Create a function called convert(amountString: String) -> String? In it, do the following:

 create a constant called amount. Its value should be the amountString that is initialized into a Double
 use a guard let to unwrap the new amount constant.
 convert the dollar amount to the expected currency (hint, you'll want to call the convert method you created in step 4
 
 */

func convert(amountString: String) -> String? {
    
    guard let unwrappedAmount = Double(amountString) else {
        return amountString
    }
    
    let numToString = convert(unwrappedAmount)
    
    return String(numToString)
}

convert(amountString: "500 Dollars")

currency = Currency.mxn
print(convert(250))

//

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()









    


