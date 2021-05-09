import UIKit

//1.1

enum CalculationType {
    case addition, subtraction, multiplication, division
}

//1.2

func arithmeticOperation(numberOne: Int, numberTwo: Int, operation: CalculationType) -> Int? {
    var result = numberOne
    
    switch operation {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        if numberTwo != 0 {
            result /= numberTwo
        } else {
            print("Zero")
            return nil
        }
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
    enum DollarCountrys {
        case USA, Canada, Australia
    }
    
    enum ShortName: String {
        case usd = "USD"
        case rub = "RUB"
        case euro = "EUR"
    }
    
    case dollar(countries: [DollarCountrys], shortName: ShortName)
    case rouble(countries: [String], shortName: ShortName)
    case euro(countries: [String], shortName: ShortName)
}

//2.2

let dollarCurrency: CurrencyUnit = .dollar(countries: [.USA, .Canada, .Australia], shortName: .usd)

//2.3
let roubleCurrency: CurrencyUnit = .rouble(countries: ["Russia", "Belarus"], shortName: .rub)
let euroCurrency: CurrencyUnit = .euro(countries: ["Italy", "Spain"], shortName: .euro)

func aboutCurrency (currency: CurrencyUnit) {
    switch currency {
    case .dollar(countries: _, shortName: let shortName):
        print("Dollar is quoted in: \(CurrencyUnit.DollarCountrys.USA), \(CurrencyUnit.DollarCountrys.Canada), \(CurrencyUnit.DollarCountrys.Australia). Short name: \(shortName.rawValue)")
    case .rouble(countries: let countries, shortName: let shortName):
        print("Rouble is quoted in: \(countries.joined(separator: ", ")). Short name: \(shortName.rawValue)")
    case .euro(countries: let countries, shortName: let shortName):
        print("Euro is quoted in: \(countries.joined(separator: ", ")). Short name: \(shortName.rawValue)")
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

