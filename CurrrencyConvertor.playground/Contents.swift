import UIKit

enum Currency: String {
    case cad
    case mxn
    case usd
}

let usToCad = 1.39
let usToMxn = 22.34

var currency: Currency = .cad

func convert(dollars: Double, targetCurrency: Currency) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    case .usd:
        return dollars
    }
}

convert(dollars: 15, targetCurrency: .cad)

//6. Create a function called `convert(amountString: String) -> String?` In it, do the following:
//    * create a constant called `amount`. Its value should be the `amountString` that is initialized into a `Double`
//    * use a `guard let` to unwrap the new `amount` constant.
//    * convert the dollar amount to the expected currency (hint, you'll want to call the `convert` method you created in step 4
    
func convert2(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        return nil
    }
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    
    let convertedAmount = convert(dollars: amount, targetCurrency: .cad)
    
    let currencyConverter = formatter.string(for: convertedAmount)!
    
    print(currencyConverter)
    
    return currencyConverter
}

convert2(amountString: "12")
convert2(amountString: "6")
    
//7. Test your code by calling `convert(amountString` with some values. Change your `currency` to both `.cad` and `.mxn` (by manually changing the value of your `currency` variable above) to make sure the conversion works for both currencies.


    

