import UIKit

//1.1

enum CalculationType {
    case addition, subtraction, multiplication, division
}

//1.2

func arithmeticOperation(numberOne: Int, numberTwo: Int, operation: CalculationType) -> Int {
    //print("Result of \(operation.self) \(numberOne) and \(numberTwo) is equal to \()")
    
    switch operation {
    case .addition:
        return numberOne + numberTwo
    case .subtraction:
        return numberOne - numberTwo
    case .multiplication:
        return numberOne * numberTwo
    case .division:
        return numberOne / numberTwo
    }
}

//1.3

let addition = arithmeticOperation(numberOne: 43, numberTwo: 57, operation: .addition)
let subtraction = arithmeticOperation(numberOne: 57, numberTwo: 43, operation: .subtraction)
let multiplication = arithmeticOperation(numberOne: 43, numberTwo: 57, operation: .multiplication)
let division = arithmeticOperation(numberOne: 57, numberTwo: 43, operation: .division)

//2.1

enum CurrencyUnit {
    case rouble, dollar, euro
    enum DollarCountrys {
        case USA, Canada, Australia
    }
}

//2.2



//2.3



//3.1

struct ChessPlayer {
    let name: String
    var wins: Int
    var description: String {
        "\(name) : \(wins)"
    }
    
    mutating func addWins(count:Int) {
        wins += count
    }
}

//3.2

let player = ChessPlayer(name: "Elon Musk", wins: 99)

print(player.description)
