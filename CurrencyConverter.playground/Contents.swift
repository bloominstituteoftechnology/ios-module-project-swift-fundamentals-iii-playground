import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMxn = 18.80

let currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return (dollars * usToCad)
    case .mxn:
        return (dollars * usToMxn)
    }
}
convert(1000)

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
convert(500)
//In some programming languages, function overloading or method overloading is the ability to create multiple functions of the same name with different implementations. Calls to an overloaded function will run a specific implementation of that function appropriate to the context of the call, allowing one function call to perform different tasks depending on context.
print(convert(500))

