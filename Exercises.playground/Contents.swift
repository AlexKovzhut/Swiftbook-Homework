import UIKit


//Проверка символов в строке на уникальность
func sortChar(input: String) -> Bool {
    return Set(input).count == input.count
}

sortChar(input: "World")


//Является ли строка палиндромом

func checkString(input: String) -> Bool {
    let lowerCased = input.lowercased()
    
    return String(lowerCased.reversed()) == lowerCased
}

checkString(input: "Казак")


//Идентичны ли две строки между собой

func   checkForEqual (firstString: String, secondString: String) -> Bool {
    return firstString.sorted() == secondString.sorted()
}

checkForEqual(firstString: "World", secondString: "World")


//Содержит ли одна строка другую

let someString = "Hello World"

someString.contains("hello")

extension String {
    func customContains(_ string: String) -> Bool {
        return self.lowercased().contains(string.lowercased())
    }
}

someString.customContains("hello")


//Сколько раз символ встерчается в строке

func countCharInString (input: String, count: Character) -> Int {
    return input.reduce(0) { $1 == count ? $0 + 1 : $0}
    
}

countCharInString(input: "Hello World", count: " ")


//Удаление повторяющихся символов из строки

func deleteChar(string: String) -> String {
    var array = [Character] ()
    
    for char in string {
        if !array.contains(char) {
            array.append(char)
        }
    }
    
    return String(array)
}

deleteChar(string: "Hello World")


//Сокращение пробелов до одного

func deleteSpace (input: String) -> String {
    var space = false
    var returnValue = ""
    
    for char in input {
        if char == " " {
            if space { continue }
            space = true
        } else {
            space = false
        }
        
        returnValue.append(char)
    }
    
    return returnValue
}

deleteSpace(input: "Hello   World")


//Вращение строки

func rotateString (input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    
    let combined = input + input
    return combined.contains(rotated)
}

rotateString(input: "Hello", rotated: "loHel")


//Является ли строка панграммой


