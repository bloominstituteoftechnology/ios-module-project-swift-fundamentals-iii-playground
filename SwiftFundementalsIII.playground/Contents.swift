import UIKit

//1
enum Currency {
  case cad
  case mxn
}
//2.
let usdToCad: Double = 1.40
let usdToMxn: Double = 23.60
//3.
var currency: Currency = .cad
//4. & 5.
func convert(dollars: Double) -> Double {
  switch currency {
  case .cad:
    return dollars * usdToCad
  case .mxn:
    return dollars * usdToMxn
  default:
    return dollars
  }
}
//6.
func convertTwo(amountString: String) -> String? {
  guard let amount = Double(amountString) else { return
  }
    return ""
}
    //convert(dollars: amountString)

//7.
//convert(amountString: "18.56)
