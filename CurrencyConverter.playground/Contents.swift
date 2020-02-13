import Cocoa

let currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

func formatCurrency(_ value: Double) -> String {
    return currencyFormatter.string(from: NSNumber(value: value)) ?? "**Error formatting \(value)**"
}

enum Currency: String {
    case cad = "CAD"
    case mxn = "MXN"
}

func convertDollars(_ dollars: Double, to: Currency) -> Double {
    switch (to) {
    case .cad:
        return dollars * 1.33
    case .mxn:
        return dollars * 18.60
    }
}

func convertDollarsString(_ dollarsString: String, to: Currency) -> String? {
    guard let dollars = Double(dollarsString) else {
        print("\(dollarsString) is not a valid input.")
        return nil
    }
    
    let result = formatCurrency(convertDollars(dollars, to: to))
    print("\(formatCurrency(dollars)) USD ---> \(result) \(to.rawValue)")
    return result
}

convertDollarsString("1000", to: .cad)
convertDollarsString("nil", to: .cad)
convertDollarsString("250", to: .mxn)
