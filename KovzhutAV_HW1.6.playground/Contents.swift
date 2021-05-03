import UIKit

//1

class Orange {
    let radius: Double
    var color: String
    var taste: String
    
    var volume: Double { calculateVolume() }
    
    init(radius: Double, color: String = "", taste: String = "") {
        self.radius = radius
        self.color = color
        self.taste = taste
    }
    
    private func calculateVolume() -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}

let newOrange = Orange(radius: 4)

newOrange.color = "orange"
newOrange.taste = "sweet"

print("Orange has \(newOrange.color) color and \(newOrange.taste) taste. The volume of orange is \(newOrange.volume)")

//2.1

class Shape {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    
    var square: Float {
        squareOfShape()
    }
    
    var perimeter: Float {
        perimeterOfShape()
    }
    
    var descripton: String {
        "Square of shape \(Self.self) is \(square), Perimeter - \(perimeter)"
    }
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    init(radius: Float) {
        self.radius = radius
    }

    func squareOfShape() -> Float {
        0
        
    }
    
    func perimeterOfShape() -> Float {
        0
    }
}

//2.2

class Circle: Shape {
    override func squareOfShape() -> Float {
        Float.pi * (radius * radius)
}
    
    override func perimeterOfShape() -> Float {
        2 * Float.pi * radius
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
        Float.pi * height * width
}
    
    override func perimeterOfShape() -> Float {
        4 * (((Float.pi * height * width) + (height - width)) / height + width)
    }
}

//2.3

let circle = Circle(radius: 5)
let rectangle = Rectangle(height: 6, width: 3)
let ellipse = Ellipse(height: 3, width: 2)

print(circle.descripton)
print(rectangle.descripton)
print(ellipse.descripton)

//3.1

class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}

//3.2

let names = ["John", "Aaron", "Tim", "Ted", "Steven",]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//3.3

var employees: [Employee] = []

while employees.count < 10 {
    employees.append(Employee(salary: Int.random(in: 1000...2000),
                              name: names.randomElement() ?? "",
                              surname: surnames.randomElement() ?? ""))
}

//3.4

for employee in employees {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}

//3.5
var emplyeesEvenSalary: [Employee] = []

for employee in employees {
    if employee.salary % 2 == 0 {
        emplyeesEvenSalary.append(employee)
        print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
    }
}
