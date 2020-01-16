import UIKit


// USD to CAD - 1.30
// USD to MXN - 18.81

//enum Currency {
//    case cad
//    case mxn
//}
//
//
//class CurrencyType{
//    let amountString: String
//    let convertType: Currency
//
//    init(amountString: String, convertType: Currency){
//        self.amountString = amountString
//        self.convertType = convertType
//    }
//
//    func converString(amountString: String) -> Double{
//        guard let doubleAmount = Double(amountString) else{
//            print("Not a valid amount")
//        }
//
//        return doubleAmount
//    }
//}
//
//let test = CurrencyType(amountString: "150", convertType: .cad)
//test.converString(amountString: "150")
//
//
//func
//
//
//func convertDollars(_ dollars: Double, currencyToConverTo: Currency) -> Double{
//    switch currency {
//    case .cad:
//        let convertedCurrency = usToCad * dollars
//        return convertedCurrency
//    case .mxn:
//        let convertedCurrency = usToMxn * dollars
//        return convertedCurrency
//    }
//}
//
//
//
//convert(amountString: "150")
//
//let usToCad = 1.30
// let usToMxn = 18.81
 



enum Currency: Double {
    case cad = 1.30
    case mxn = 18.81
}

let usToCad = 1.30
let usToMxn = 18.81

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double{
    let convertTotal = dollars * currency.rawValue
    print(convertTotal)
    return convertTotal
}

func convert(_ dollarsString: String) -> String?{
//    if let dollarDouble = Double(dollarsString){
//        let convertTotal = dollarDouble * currency.rawValue
//        return("\(convertTotal)")
//    }else{
//        return("Invalid Amount")
//    }
    guard let amount = Double(dollarsString) else{
        return nil
    }
    
    let converTotal = amount * currency.rawValue
    
    let currencyFormatter = NumberFormatter()
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.numberStyle = .currency
    currencyFormatter.locale = Locale.current
    
    guard let formatedTotal = currencyFormatter.string(from: NSNumber(value: converTotal)) else {
        return nil
    }
    print("\(formatedTotal)")
    return(formatedTotal)
}


convert(321)
convert("745.89")

currency = .mxn

convert(32.98)
convert("856.98")
