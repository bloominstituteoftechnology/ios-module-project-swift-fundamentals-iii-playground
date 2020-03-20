import UIKit

var str = "Hello, playground"


enum Currency {
    case cad
    case mxn
}

var usToCad = 1.45
var usToMex = 24.03

var currency: Currency = .cad

func converter(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        print("canadian currency")
    case .mxn:
        print("Mexican currency")
    default:
        print("")
    }
    return
}

