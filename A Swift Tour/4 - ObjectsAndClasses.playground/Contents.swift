/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
 Code by Ana Carolina Barreto
 @thepurpleana || thepurpleana@gmail.com
 JAN - 2019
 */



//MARK: - Objects and Classes

/// - Experiment: Add a constant property with let, and add another method that takes an argument.

import UIKit

class Shape {
    
    var numberOfSides = 0  
    let color = #colorLiteral(red: 0.200000003, green: 0.200000003, blue: 0.200000003, alpha: 1)
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func incrementSides(by amount: Int) {
        numberOfSides += amount
    }
    
}

///


/// - Experiment: Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.

class NamedShape {
    
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}

class Circle: NamedShape {
    
    var radius: Double
    
    init (radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 2 * Double.pi * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle."
    }
    
}

///


/// Extra code to play :)

class EquilateralTriangle: NamedShape {
    
    var sideLength : Double = 0.0
    
    init (sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return Double(numberOfSides) * sideLength
        }
        set {
            sideLength = newValue / Double(numberOfSides)
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
    
}

///

//
