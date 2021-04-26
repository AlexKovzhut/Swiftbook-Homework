import UIKit


//1

let goods = 15
var cost: Int

if goods <= 9 {
    cost = 1000
    print("Total cost of goods = \(goods * cost)")
} else if goods >= 10 && goods <= 19 {
    cost = 800
    print("Total cost of goods = \(goods * cost)")
} else if goods >= 20 {
    cost = 600
    print("Total cost of goods = \(goods * cost)")
}


//2

//var userInputAge = "34e"
//var userAge: Int = Int (userInputAge) - Компилятор хочет привести опциональный тип данных Int? к типу данных Int, поскольку это два разных типа данных

//var userInputAge = "34e"
//var userAge: Int? = Int (userInputAge) -  nil потому что не получили целочисленного значения

//var userInputAge = "34"
//var userAge: Int? = Int (userInputAge) - кажется все правильно? вывели целочисленное значение
//print(userAge!)

//var userInputAge = "34"
//if let userAge: Int? = Int ( userInputAge ) { - вроде бы все корректно, получили целочисленное значение без ошибок
//   print(userAge)
//}
//var userAge: Int? = Int (userInputAge)!


//var userInputAge = "34e"  - ошибка из-то того что userInputAge не опциоанальный тип и компилятор поэтому не может сделать force unwrapping
//print(userInputAge!)


//3

let dangerLevel = "C"

switch dangerLevel {
case "A":
    print("Выключить все электрические приборы")
    fallthrough
case "B":
    print("Закрыть входные двери и окна")
    fallthrough
case "C":
    print("Соблюдать спокойствие")
default:
    print("Все отлично, угрозы нет")
}


//4

let candyColor = "green"
let candyFilling = "chokolate"

switch candyColor  {
case "red" where candyFilling == "chokolate":
    print("This is \(candyColor) candy with \(candyFilling) inside")
case "yellow" where candyFilling == "nuts":
    print("This is \(candyColor) candy with \(candyFilling) inside")
case "brown" where candyFilling == "chokolate",
     "green" where candyFilling == "chokolate":
    print("This is \(candyColor) candy with \(candyFilling) inside")
default:
    print("Something wrong, its not that candy!")
}














