import UIKit


//1


class Orange {
    var color:  String = "orange"
    var taste: String = "sweet"
    let radius: Double
    
    
    init(radius: Double) {
        self.radius = radius
        calculateOrangeVolume(radius)
    }
    
    func calculateOrangeVolume(_ :Double ) -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}


var newOrange = Orange(radius: 1.2)
//newOrange.orangeVolume


print("Orange has \(newOrange.color) color and \(newOrange.taste) taste. The volume of orange is \(newOrange.radius)")


//2.1


class Shape {
    let height: Double
    let width: Double
    let radius: Double
    let square: Double
    let perimeter: Double
    let Double: Double
    
    
    
}
