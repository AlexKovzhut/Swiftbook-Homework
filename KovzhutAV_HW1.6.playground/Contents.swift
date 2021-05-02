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
    var (height, width, radius) = (0.0, 0.0 ,0.0)
    var square: Float { self.squareOfShape() }
    var perimeter: Float { self.perimeterOfShape() }
    var descripton: String { "Площадь фигуры \(Shape.self) равна \(square), периметр (длина) равен(а) \(perimeter)" }
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    init(radius: Float) {
        self.radius = radius
    }

    func squareOfShape() -> Float {
        height * width
        
    }
    
    func perimeterOfShape() -> Float {
        height + width
    }
}

//2.2

class Circle: Shape {
    override func squareOfShape() -> Float {
        Float(Double.pi) * (pow(Float(radius), 2))
}
    
    override func perimeterOfShape() -> Float {
        2 * Float(Double.pi) * radius
    }
}

class Rectangle: Shape {
    override func squareOfShape() -> Float {
        height * width
}
    
    override func perimeterOfShape() -> Float {
        2 * (height + width)
    }
}

class Ellipse: Shape {
    override func squareOfShape() -> Float {
        Float(Double.pi) * height * width
}
    
    override func perimeterOfShape() -> Float {
        4 * (((Float(Double.pi) * height * width) + (height - width)) / height + width)
    }
}

//2.3

let circle = Circle(radius: 5)

print(circle.descripton)

let rectangle = Rectangle(height: 6, width: 3)

print(rectangle.descripton)

let ellipse = Ellipse(height: 3, width: 2)

print(ellipse.descripton)




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

