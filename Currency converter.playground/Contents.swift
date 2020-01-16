import UIKit

enum Currency {
    case cad
    case mxd
    
}

let usToCad: Double = 1.30
let usToMxd: Double = 18.70
var currency: Currency = .mxd

func convert(_ dollars: Double) -> Double {
    
    switch currency {
    case .cad:
        return (dollars * usToCad)
    case .mxd:
        return (dollars * usToMxd)
    }
    
}

convert(3000)

func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    
    guard let amountValue = amount else {
        return nil
    }
    let conversion = convert(amountValue)
    
    let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    return currencyFormatter.string(from: NSNumber(value: conversion))
}

convert(3000)
//In some programming languages, function overloading or method overloading is the ability to create multiple functions of the same name with different implementations. Calls to an overloaded function will run a specific implementation of that function appropriate to the context of the call, allowing one function call to perform different tasks depending on context.
print(convert(500))
