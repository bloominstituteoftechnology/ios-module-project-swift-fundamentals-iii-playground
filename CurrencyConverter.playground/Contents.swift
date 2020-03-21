import UIKit

var str = "Hello, playground"


enum Currency {
    case cad
    case mxn
}

var usToCad = 1.44
var usToMex = 24.42

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    let can = usToCad * dollars
    let mex = usToMex * dollars
    switch currency {
    case .cad:
        print("Canadian currency \(can)")
    case .mxn:
        print("Mexican currency \(mex)")
    default:
        print("")
    }
    return dollars
}
//convert(20)


