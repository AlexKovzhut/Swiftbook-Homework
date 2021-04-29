import UIKit

//1

let gameResults = [
    "Cалават Юлаев": ["3:6" , "5:5" , "N/A"],
    "Авангард": ["2:1"],
    "Ак Барс": ["3:3" , "1:2"]
]

for (team, result) in gameResults {
    for match in result {
        print("Игра с \(team) - \(match)")
    }
}

//2

func calculateCash(inWallet wallet: Int...) -> Int {
    var sum = 0
    
    for currentCash in wallet {
        sum += currentCash
    }
    
    return sum
}

calculateCash(inWallet: 50, 10, 100, 200, 5000, 1000, 2000, 500)

//3.1

func isEvenOrUneven(_ number: Int) -> Bool {
    number % 2 == 0
}

//3.2

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

//3.3

func returnArrayLength(from x: Int, to y: Int) -> [Int] {
    var length: Set<Int> = []
    
    for currentLength in x...y {
        length.insert(currentLength)
    }
    
    return Array(length)
}

returnArrayLength (from: 1, to: 9)

//3.4

var someArray = returnArrayLength(from: 1, to: 100)

//3.5

func isFilter(for array: [Int], clouser: (Int) -> Bool) -> [Int] {
    var evenNumbers: [Int] = []
    
    for number in array {
        if !clouser(number) {
            evenNumbers.append(number)
        }
    }
    
    return evenNumbers
}

isFilter(for: someArray, clouser: isEvenOrUneven)

isFilter(for: someArray, clouser: isDivisibleByThree)


