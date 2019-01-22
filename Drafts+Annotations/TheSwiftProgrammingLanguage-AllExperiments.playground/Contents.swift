/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
        Code by Ana Carolina Barreto
  @thepurpleana || thepurpleana@gmail.com
                JAN - 2019
 */


//MARK: - Simple Values

// - Experiment: Create a constant with an explicit type of Float and a value of 4.
let four: Float = 4

// - Experiment: Try removing the conversion to String from the last line. What error do you get?
let size = 40
let label = "The width is \(size)."
let sizeLabel = label + String(size)
//uncomment line below to see error
//let sizeLabel = label + size


//MARK: - Control Flow

// - Experiment: Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.

var optionalName : String?

if let name = optionalName {
    print(name)
} else {
    print("Not a valid name.")
}

// - Experiment: Try removing the default case. What error do you get?

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
//comment lines below to see the error
default:
    print("Everything taster good in soup.")
}

// - Experiment: Add another variable to keep track of whici kind of number was the largest, as well as what that largest number was.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0
var type = ""

for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}

print(largest, type)


// MARK: - Functions and Closures

// - Experiment: Remove the day parameter. Add a parameter to include today's lunch special in the greeting.
func welcome(_ person: String, special: String) -> String {
    return "Hello \(person), today's special is \(special)."
}
welcome("Justin", special: "Garden Salad")


// - Experiment: Rewrite the closure to return zero for all odd numbers.
var numbers = [2, 3, 4, 5, 6, 7, 8, 9, 22]

numbers.map({ (number: Int) -> Int in
    return (number % 2 != 0) ? 0 : number
})


//MARK: - Objects and Classes

// - Experiment: Add a constant property with let, and add another method that takes an argument.

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


// - Experiment: Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.

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

//MARK: - Enumerations and Structures


