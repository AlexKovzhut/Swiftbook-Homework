import UIKit

//1.1

enum CalculationType {
    case addition, subtraction, multiplication, division
}

//1.2

func arithmeticOperation(numberOne: Int, numberTwo: Int, operation: CalculationType) -> Int {
    var result = 0
    
    switch operation {
    case .addition:
        result = numberOne + numberTwo
    case .subtraction:
        result =  numberOne - numberTwo
    case .multiplication:
        result =  numberOne * numberTwo
    case .division:
        result =  numberOne / numberTwo
    }
    
    print("Result of \(operation.self) \(numberOne) and \(numberTwo) is equal to \(result)")
    
    return result
}

//1.3

let addition = arithmeticOperation(numberOne: 5, numberTwo: 5, operation: .addition)
let subtraction = arithmeticOperation(numberOne: 7, numberTwo: 4, operation: .subtraction)
let multiplication = arithmeticOperation(numberOne: 3, numberTwo: 3, operation: .multiplication)
let division = arithmeticOperation(numberOne: 9, numberTwo: 2, operation: .division)

//2.1

enum CurrencyUnit {
    case dollar(countries: [DollarCountrys], shortName: String),
         rouble(countries: [String], shortName: String),
         euro(countries: [String], shortName: String)
    
    enum DollarCountrys {
        case USA, Canada, Australia
    }
}

//2.2

let dollarCurrency: CurrencyUnit = .dollar(countries: [.USA, .Canada, .Australia], shortName: "USD")

//2.3 Получилась каша  :)

let roubleCurrency: CurrencyUnit = .rouble(countries: ["Russia", "Belarus"], shortName: "RUB")
let euroCurrency: CurrencyUnit = .euro(countries: ["Italy", "Spain"], shortName: "EUR")

func aboutCurrency (currency: CurrencyUnit) {
    switch currency {
    case .dollar(countries: _, shortName: let shortName):
        print("Dollar is quoted in: \(CurrencyUnit.DollarCountrys.USA), \(CurrencyUnit.DollarCountrys.Canada), \(CurrencyUnit.DollarCountrys.Australia). Short name: \(shortName)")
    case .rouble(countries: let countries, shortName: let shortName):
        print("Rouble is quoted in: \(countries.joined(separator: ", ")). Short name: \(shortName)")
    case .euro(countries: let countries, shortName: let shortName):
        print("Euro is quoted in: \(countries.joined(separator: ", ")). Short name: \(shortName)")
    }
}

aboutCurrency(currency: dollarCurrency)
aboutCurrency(currency: roubleCurrency)
aboutCurrency(currency: euroCurrency)


//3.1

struct ChessPlayer {
    let name: String
    var wins: Int
    var description: String {
        "Player: \(name), Result: \(wins)"
    }
    
    mutating func addWins(count:Int) {
        wins += count
    }
}

//3.2

var player = ChessPlayer(name: "Elon Musk", wins: 99)

print(player.description)

player.addWins(count: 1)

print(player.description)

