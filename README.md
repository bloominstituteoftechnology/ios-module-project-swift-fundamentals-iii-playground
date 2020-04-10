/*
# Swift Fundamentals III Module Project

#### **Please fork and clone this repository**

The goal of today's module project is to create a Currency Conversion playground that can convert from US dollars (USD) to Canadian dollars (CAD) and Mexican Pesos (MXN).

Get the currency conversion value from Google:

On August 7th, 2019 they were:

	$1 USD to $1.33 CAD
	$1 USD to $19.70 MXN

## Add the Conversion Logic

Create a new playground in this repository called "CurrencyConverter"

1. Create a currency type enum below the `import` statements.

	```swift
	enum Currency {
	    case cad
	    case mxn
	}
	```
2. Create a constant called `usToCad` and set its value to the current conversion value (googling `usd to cad` should give you the value). Do the same for a new constant called `usToMxn`.
3. Create a property named `currency` of type `Currency`. This will store the current currency type we'll be converting to. Set an initial value of `.cad`.
4. Create a helper method to calculate the currency based on the Currency using the method signature:
	```swift
	func convert(_ dollars: Double) -> Double {
	
	}
	```
5. In the above method:
    * Check the value of `currency` to see whether you should convert to CAD or MXN
    * Perform the conversion with the dollars passed into this method
    * Return the converted value
6. Create a function called `convert(amountString: String) -> String?` In it, do the following:
    * create a constant called `amount`. Its value should be the `amountString` that is initialized into a `Double`
    * use a `guard let` to unwrap the new `amount` constant.
    * convert the dollar amount to the expected currency (hint, you'll want to call the `convert` method you created in step 4
7. Test your code by calling `convert(amountString` with some values. Change your `currency` to both `.cad` and `.mxn` (by manually changing the value of your `currency` variable above) to make sure the conversion works for both currencies.


## Go Further (Optional)

1. Customize the output using a `NumberFormatter`

	```swift
	var currencyFormatter: NumberFormatter = {
	    let formatter = NumberFormatter()
	    formatter.numberStyle = .currency
	    return formatter
	}()
	```

2. Use the `string(from:)` method to convert from a number to a String for display
*/



enum CurrencyType: String {
  case dollars = "American dollars"
  case cadDollar = "Canadian dollar" 
  case pesos = "Mexican pesos"
  case pounds = "British pounds"
  case yen = "Japanese yen"
}




let defaultValueUS: Double = 1.00 

let usToCad: Double = defaultValueUS + 0.40

func currencyConverterToCanadian( _ dollarToCanadian: Double) {
  let dollarToCanadian: Double = defaultValueUS + 0.40
  print("The conversion rate from dollar $\(defaultValueUS) to Canadian is \(dollarToCanadian)")
}
currencyConverterToCanadian(1.00)




let usToMxn: Double = defaultValueUS + 22.72

func currencyConverterToMexican( _ dollarToPeso: Double) {
  let dollarToPeso: Double = defaultValueUS + 22.72
  print("The conversion rate from dollar $\(defaultValueUS) to Peso is \(dollarToPeso)")
}
currencyConverterToMexican(1.00)




let usToPounds: Double = defaultValueUS - 0.20

func currencyConverterToPounds( _ dollarToPounds: Double) {
  let dollarToPounds: Double = defaultValueUS - 0.20
  print("The conversion rate from dollar $\(defaultValueUS) to Peso is \(dollarToPounds)")
}
currencyConverterToPounds(1.00)




let usToYen: Double = defaultValueUS +  107.48

func currencyConverterToYen( _ dollarToYen: Double) {
  let dollarToYen: Double = defaultValueUS + 107.48
  print("The conversion rate from dollar $\(defaultValueUS) to Yen is \(dollarToYen)")
}
currencyConverterToYen(1.00)


