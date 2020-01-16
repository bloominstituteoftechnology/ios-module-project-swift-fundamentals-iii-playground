import UIKit

//1

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()



enum Currency {
    case cad
    case mxn
}
//2
let usToCad = 1.33
let usToMxn = 19.70
//3

let currency : Currency = .cad


//4
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

//5
func convertString(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        print("This thing is not money.Please try again!")
        return nil
        
    }
      return  String(convert(amount))
    
}
convertString(amountString: "500")

// Optional Challenge


func finalConvert(_ dollars: Double) -> String {
    switch currency {
    case .cad:
        guard  let usdToCadString = currencyFormatter.string(from: NSNumber(value: dollars * usToCad)) else { fatalError()  }
        print(usdToCadString)
        return usdToCadString
    case .mxn:
        guard let usdToMxnString = currencyFormatter.string(from: NSNumber(value: dollars * usToMxn)) else { fatalError() }
        print(usdToMxnString)
        return usdToMxnString
    }
}
finalConvert(1000)



