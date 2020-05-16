# Swift Fundamentals III Module Project

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
