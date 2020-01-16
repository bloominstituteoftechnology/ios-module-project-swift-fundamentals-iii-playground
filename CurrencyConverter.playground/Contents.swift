import Cocoa

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMxn = 18.79

var currency: Currency = .cad

    var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.locale = Locale.current
    formatter.numberStyle = .currency
    return formatter
    }()


//MARK: - Convert Function
func convert1(_ dollars: Double) -> Double{
    
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}
let result = convert1(1000)
print(result)

//MARK: - Second Convert Function
func convert2(amountString: String) -> String?{
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else { return nil }
//    return String(convert1(unwrappedAmount))
    return currencyFormatter.string(from: NSNumber(value: convert1(unwrappedAmount)))
}

var example = convert2(amountString: "1000")
if let unwrappedExample = example{
    print(unwrappedExample)
}



