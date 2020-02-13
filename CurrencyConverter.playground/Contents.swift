

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.33
let usToMxn: Double = 19.70
var currency: Currency = .mxn



func convert(dollars: Double) -> Double {
    var dollars = dollars
    switch currency {
    case .cad:
        dollars = dollars * usToCad
    case .mxn:
        dollars = dollars * usToMxn
    default:
        break
    }
     
  return dollars
}
print(convert(dollars: 48))




func convert(amountString: String, theCurrency: Currency) -> String? {
    let amount = Double(amountString)

    guard let newAmount = amount
    else {
      return nil
    }
    
    let convertedCurrency = convert(dollars: newAmount)
    print("Total Amount: \(convertedCurrency)")
    return String(convertedCurrency)
}

convert(amountString: "20", theCurrency: .mxn)
