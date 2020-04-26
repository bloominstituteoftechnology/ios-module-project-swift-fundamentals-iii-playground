import UIKit
// 1
enum Currency {
    case cad
    case mxn
}
// 2
let usToCad = 1.41
let usToMxn = 24.99
// 3
var currency: Currency = .cad
// 4, 5,
func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return usToCad * dollars
    default:
        return usToMxn * dollars
    }
    
}
// 6
func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else { return nil }
    
    let covertedAmount = convert(amount)
    
    return String(covertedAmount)

}
// 7
convert(amountString: "100")
currency = .mxn
convert(amountString: "100")

