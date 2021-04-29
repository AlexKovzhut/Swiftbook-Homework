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


func wallet (for cash: Int...) -> Int {
    var sum = 0
    
    for currentCash in cash {
        sum += currentCash
    }
    
    return sum
}

wallet(for: 50, 10, 100, 200, 5000, 1000, 2000, 500)



//3.1


func evenOrUneven (number: Int) -> Bool {
    number % 2 == 0
}



//3.2


func divisionByThree (number: Int) -> Bool {
    number % 3 == 0
}



//3.3


func returnArrayLength (begin x: Int, end y: Int) -> [Int] {
    var length: [Int] = []
    
    for currentLength in x...y {
        length.append(currentLength)
    }
    
    return length
}

returnArrayLength (begin: 1, end: 9)


//3.4

let someArray = returnArrayLength(begin: 1, end: 100)


//3.5

func filter (for array: [Int]) -> [Int] {
    var evenNumbers: [Int] = []
    
    for unit in array {
        if evenOrUneven(number: unit) {
            evenNumbers.append(unit)
        }
    }
    
    return evenNumbers
}

filter(for: someArray)


