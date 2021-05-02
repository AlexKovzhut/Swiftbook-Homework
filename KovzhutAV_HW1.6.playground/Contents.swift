import UIKit

//1

class Orange {
    var (color, taste) = ("orange", "sweet")
    var radius: Double
    var orangeVolume: Double { self.calculateOrangeVolume() }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func calculateOrangeVolume() -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}

var newOrange = Orange(radius: 1.5)
newOrange.orangeVolume

print("Orange has \(newOrange.color) color and \(newOrange.taste) taste. The volume of orange is \(newOrange.radius)")



//2.1

class Shape {
    let height: Double
    let width: Double
    let radius: Double
    let square: Double
    let perimeter: Double
    
    init(height: Double, width: Double, radius: Double, square: Double, perimeter: Double) {
        self.height = height
        self.width = width
        self.radius = radius
        self.square = square
        self.perimeter = perimeter
    }
    
    func squareOfShape() {
        
    }
    
    func perimeterOfShape() {
        
    }
    
}

//2.2

class Circle: Shape {
    
}

class Rectangle: Shape {
    
}

class Ellipse: Shape {
    
}

//2.3




//3.1

class Employee {
    let salary: Float
    let name: String
    let surname: String
    
    init(salary: Float, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}

//3.2

var names = ["John", "Aaron", "Tim", "Ted", "Steven",]
var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//3.3

var employees: [Employee] = []



//3.4

//3.5

