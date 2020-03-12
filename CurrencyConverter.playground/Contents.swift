import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.38

let usToMxn: Double = 21.92

var currency: Currency = .cad



func convert(_ dollars: Double) -> Double {
    
    // checking the value of currency
     
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    default:
        return dollars
    }

}

print(convert(20))

func convert(amountString: String) -> String? {
    
    // unwrapping the amountString. By putting the double in front of amount string we are saying to take away the "".
    guard let amount = Double(amountString) else {
        return nil
    }
    
    // Passing in the convert function. Created constant to put it in.
    // Converting the amount which is a double.
    let numberToString = convert(amount)
    
    
    let currencyFormatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
       }()
       
    let priceString = currencyFormatter.string(from: 999.99)!
        print(priceString)
    
    // By returning numberToString in a String data type. We are saying, put this value into a string.
    return String(numberToString)
    
    
   
}


convert(amountString: "12")


// Stretch




    
    


