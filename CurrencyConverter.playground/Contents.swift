import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.40
let usToMxn = 23.59
var currency: Currency = .cad

let usd: Double = 1.00

func convert(dollars: Double) -> Double {
    switch currency {
    case .cad:
        return usToCad
    case .mxn:
        return usToMxn
    default:
        return dollars
    }
}

func convert(amountString: String) -> String? {
//    let amount: Double
//    amount = amountString
//
//   guard let amount = amountString else {
//    print("Invalid amount")
//    return
//    }
//}
//var currencyFormatter = NumberFormatter = {
//  let formatter = NumberFormatter()
//    formatter.numberStyle = .currency
//    return formatter
//} ()


func multiply(firstNumber: Int, secondNumber: Int) -> Int {
   let total = firstNumber * secondNumber
    return total
}

let numberOne = 4
let numberTwo = 5

multiply(firstNumber: numberOne, secondNumber: numberTwo)
