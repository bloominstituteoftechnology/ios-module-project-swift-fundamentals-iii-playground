//
//enum Currency {
//    case cad
//    case mxn
//}
//
//let usToCad = 1.45
//let usToMxn = 24.40
//
//var currency: Currency = .cad
//
//func convert(_ dollars: Double) -> Double {
//    switch currency {
//    case .cad:
//        return usToCad * dollars
//    case .mxn:
//        return usToMxn * dollars
//    }
//}
//
//func convert(amountString: String) -> String? {
//    guard let amount = Double(amountString) else { return nil }
//    let conversion = convert(amount)
//    return String(conversion)
//}
//
//print(convert(amountString: "50") ?? 0)
//

enum Currency: String {
    case cad = "CAD"
    case mxn = "MXN"
}

let usToCad = 1.45
let usToMxn = 24.40

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        print("\(dollars) USD converted to \(currency.rawValue) is: \(usToCad * dollars)")
    case .mxn:
        print("\(dollars) USD converted to \(currency.rawValue) is: \(usToMxn * dollars)")
    }
    return dollars
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else { return nil }
    let conversion = convert(amount)
    return String(conversion)
}

convert(amountString: "5")
