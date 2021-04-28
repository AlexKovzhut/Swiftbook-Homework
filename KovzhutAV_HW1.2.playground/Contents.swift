import Foundation



//1


let firstFloat: Float = 3.14
let secondFloat: Float = 42.0
let floatSum = Double(firstFloat) + Double(secondFloat)

print("\(floatSum)")



//2



let numberOne = 9
let numberTwo = 7
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo

print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")
print("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)")



//3



let (dayOfBirth, monthOfBirth, yearOfBirth) = (5, 2, 1991)
let (todayDay, todayMonth, todayYear) = (17, 4, 2021)
let (secondsInDay, daysOfMonth, daysOfYear) = (86400, 30, 360)

let daysPassed = (todayYear - yearOfBirth) * daysOfYear - ((monthOfBirth * daysOfMonth - (daysOfMonth - dayOfBirth)) - (todayMonth * daysOfMonth - (daysOfMonth - todayDay)))
let yearsPassed = daysPassed / daysOfYear
let monthPassed = daysOfYear / daysOfMonth * yearsPassed
let secondsPassed = daysPassed * secondsInDay

print("\(yearsPassed) years, \(monthPassed) months, \(daysPassed) days and \(secondsPassed) seconds have passed since my birth")

if  monthOfBirth > 0 && monthOfBirth <= 3 {
   print("I was born in first quarter of \(yearOfBirth)")
} else if monthOfBirth  > 3 && monthOfBirth <= 6 {
   print("I was born in second quarter of \(yearOfBirth)")
} else if monthOfBirth  > 6 && monthOfBirth <= 9 {
   print("I was born in third quarter of \(yearOfBirth)")
} else if monthOfBirth  > 9 && monthOfBirth <= 12 {
   print("I was born in fourth quarter of \(yearOfBirth)")
}

//4



let number: Double = 1
let sinFromNumber = round(1000 * sin(number))/1000

print("Синус от \(number) равен \(sinFromNumber)")




