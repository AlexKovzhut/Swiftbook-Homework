import UIKit

//1

var deposit: Double = 500_000
let period = [1,2,3,4,5]
let rate: Double = 11
var wholeProfit: Double = 0

for _ in period {
    let currentProfit: Double = deposit * rate / 100
    wholeProfit += currentProfit
    deposit += currentProfit
    
}

print("Сумма вклада через \(period.count) лет увеличится на \(String(format: "%0.2f", wholeProfit)) и составит \((String(format: "%0.2f", deposit))) рублей")


//2

let array = [1,2,3,4,5,6,7,8,9,10]

for oddNumbers in array {
    if oddNumbers % 2 == 0 {
        continue
    } else {
        print(oddNumbers)
    }
}


//3

for numbers in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
        print("Чтобы выпало число 5 понадобилось \(numbers) итераций")
        break
    } else if randomNumber != 5, numbers == 10 {
        print("Кол-во итераций превышено, а число 5 так и не выпало 🙁")
    }
}


//4

let fullPath = 10
let allDayPath = 2 + -1
var currentPath = 0
var daysToHome = 0

while currentPath <= fullPath {
    daysToHome += currentPath
    if daysToHome == fullPath {
        print("Черепашка будет дома через \(daysToHome) дней")
        break
    } else {
        currentPath += allDayPath
    }
}
