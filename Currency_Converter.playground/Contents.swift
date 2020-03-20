import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.46
let usToMxn = 24.27

let currency: Currency = .mxn

func convert(amountString: String) {
    guard let amount = Double(amountString), amount > 0 else {
        print("Please input valid amount.")
        return
    }
    print(convert(amount))
}

// Helper Functions
func convert(_ dollars: Double) -> Double {
    let usdValue: Double
    if currency == .cad {
        usdValue = dollars * usToCad
    } else {
        usdValue = dollars * usToMxn
    }
    return usdValue
}

convert(amountString: "fifty")
convert(amountString: "200")
convert(amountString: "1")
convert(amountString: "-25")
