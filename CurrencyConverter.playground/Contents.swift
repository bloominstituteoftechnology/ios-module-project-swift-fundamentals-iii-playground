import UIKit

//1. Create a currency type enum below the `import` statements.
enum Currency {
    case CAD
    case MXN
}

//2. Create a constant called `usToCad` and set its value to the current conversion value (googling `usd to cad` should give you the value). Do the same for a new constant called `usToMxn`.
let usToCad = 1.41
let usToMxn = 23.93

//3. Create a property named `currency` of type `Currency`. This will store the current currency type we'll be converting to. Set an initial value of `.cad`.
var currency: Currency = .CAD

//4. Create a helper method to calculate the currency based on the Currency using the method signature:
func convert(_ dollars: Double) -> Double {
    if currency == .CAD {
        return dollars * usToCad
    } else if currency == .MXN {
        return dollars * usToMxn
    }
    return dollars
}

//5. In the above method:
// * Check the value of `currency` to see whether you should convert to CAD or MXN
// * Perform the conversion with the dollars passed into this method
// * Return the converted value

/*
 6. Create a function called `convert(amountString: String) -> String?` In it, do the following:
 * create a constant called `amount`. Its value should be the `amountString` that is initialized into a `Double`
 * use a `guard let` to unwrap the new `amount` constant.
 * convert the dollar amount to the expected currency (hint, you'll want to call the `convert` method you created in step 4
 */
func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else { return nil }
    return String(convert(amount))
}

/*
 7. Test your code by calling `convert(amountString` with some values. Change your `currency` to both `.cad` and `.mxn` (by manually changing the value of your `currency` variable above) to make sure the conversion works for both currencies.
 */
let USD: Double = 1.00

currency = .CAD
print("USD $\(USD) is worth CAD $\(convert(USD))")
currency = .MXN
print("USD $\(USD) is worth MXN $\(convert(USD))")


//1. Customize the output using a `NumberFormatter`
var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()


//2. Use the `string(from:)` method to convert from a number to a String for display
let USD_String = currencyFormatter.string(from: 1.00)
currency = .CAD
let CAD_String = currencyFormatter.string(from: NSNumber(value: convert(USD)))
currency = .MXN
let MXN_String = currencyFormatter.string(from: NSNumber(value: convert(USD)))

print("USD = \(USD_String ?? ""), CAD = \(CAD_String ?? ""), MXN = \(MXN_String ?? "")")
