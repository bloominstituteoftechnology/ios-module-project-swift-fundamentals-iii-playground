
enum Currency {
    case CAD
    case MXN
}

let usToCad : Double = 1.37
let usToMxn : Double = 20.91


var currency : Currency = .MXN



func convert(_ dollars: Double) -> Double {
    
    
    switch currency {
    case .CAD:
        return dollars * usToCad
        
    case .MXN :
        return  dollars * usToMxn
        
        
    }
}

convert(10)

func convert(amountString: String) -> String? {
    guard let amount = Double (amountString) else {
        return nil
        
    };return "\(convert(amount))"
}







convert(amountString: "20")
convert(amountString: " dsds")
convert(amountString: "10")

