/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
 Code by Ana Carolina Barreto
 @thepurpleana || thepurpleana@gmail.com
 JAN - 2019
 */


//MARK: - Protocols and Extensions

/// - Experiment: Add another requirement to the ExampleProtocol. What changes do you need to make to SimpleClass and SimpleStructure so that they still conforme to the protocol?

protocol ExampleProtocol {
    
    var simpleDescription: String { get }
    mutating func adjust()
    mutating func restore()
    
}

class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
    
    func restore() {
        simpleDescription = "A very simple class."
    }
    
}

struct SimpleStructure: ExampleProtocol {
    
    var simpleDescription: String = "A simple structure."
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    
    mutating func restore() {
        simpleDescription = "A simple structure."
    }
    
}

///


/// - Experiment: Write an extension for the Double type that adds an absoluteValue property.

protocol AbsoluteValue {
    
    var absoluteValue: Double { get }
    
}

extension Double: AbsoluteValue {
    
    var absoluteValue: Double {
        return abs(self)
    }
    
}

var a: Double = -2.4455
a.absoluteValue

///

//

