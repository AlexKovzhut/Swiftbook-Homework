import UIKit


//1


let firstString = "I can"
let secondString = "code"
print(firstString + " " + secondString + "!")


//2.1


let myAge = 30


//2.2


let myAgeInTenyears = myAge + 10


//2.3


let daysInyear: Float = 365.25


//2.4


let daysPassed = Float (myAgeInTenyears) * daysInyear


//2.5


print("Мой возраст \(myAge) лет. Через 10 лет, мне будет \(myAgeInTenyears) лет, с момента моего рождения пройдет \(Int(daysPassed)) дней")


//3


let sideAC: Float = 8
let sideCB: Float = 6
let sideAB = sqrt (pow(sideAC, 2) + sideCB * sideCB)
let areaOfTriangle = sideAB + sideCB + sideAC

