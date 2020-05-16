import UIKit

//The goal of today's module project is to create a Currency Conversion playground that can convert from US dollars (USD) to Canadian dollars (CAD) and Mexican Pesos (MXN).
//
//Get the currency conversion value from Google:


// 1. Create a currency type enum below the `import` statements.


enum Currency {
    case cad
    case mxn
}


//  2. Create a constant called `usToCad` and set its value to the current conversion value (googling `usd to cad` should give you the value). Do the same for a new constant called `usToMxn`.

let usToCad = 1.4
let usToMxn = 23.87

// 3. Create a property named `currency` of type `Currency`. This will store the current currency type we'll be converting to. Set an initial value of `.cad`.

let usCad = Currency.cad
let usMxn = Currency.mxn

var currency: Currency = .cad

// 4. Create a helper method to calculate the currency based on the Currency using the method signature:
//```swift```

func convert(us: Double) -> Double {
    switch currency {
    case .cad:
        return us * usToCad
    case .mxn:
        return us * usToMxn
    }
}

/* 5. In the above method:
* Check the value of `currency` to see whether you should convert to CAD or MXN
* Perform the conversion with the dollars passed into this method
* Return the converted value */







/*  6. Create a function called `convert(amountString: String) -> String?` In it, do the following:
* create a constant called `amount`. Its value should be the `amountString` that is initialized into a `Double`
* use a `guard let` to unwrap the new `amount` constant.
* convert the dollar amount to the expected currency (hint, you'll want to call the `convert` method you created in step 4 */

func convert2(amountString: String) -> String? {
    let amount = amountString
    let amountConversion = Double(amount)
    guard let unwrappedAmount = amountConversion else {
        return "error"
    }
    return("Converted Currency: \(convert(us: unwrappedAmount))")
}



/* 7. Test your code by calling `convert(amountString` with some values. Change your `currency` to both `.cad` and `.mxn` (by manually changing the value of your `currency` variable above) to make sure the conversion works for both currencies.
 */


convert2(amountString: "11.00")
currency = .cad
convert(us: 16.00)
convert2(amountString: "16.00")



/* ## Go Further (Optional)

1. Customize the output using a `NumberFormatter`

    ```swift
    var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    ```

2. Use the `string(from:)` method to convert from a number to a String for display*/
