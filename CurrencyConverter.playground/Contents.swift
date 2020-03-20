import UIKit

var str = "Hello, playground"


enum Currency {
    case cad
    case mxn
}

var usToCad = 1.45
var usToMex = 24.03

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    let can = usToCad * dollars
    let mex = usToMex * dollars
    switch currency {
    case .cad:
        print("canadian currency \(can)")
    case .mxn:
        print("Mexican currency \(mex)")
    default:
        print("")
    }
    return dollars
}
convert(20)

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {return}
    
}

convert(amountString: "20")
