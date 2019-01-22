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

var a = SimpleClass()
a.adjust()

let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    
    var simpleDescription: String = "A simple structure."
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    
    mutating func restore() {
        simpleDescription = "A simple structure."
    }
    
}

var b = SimpleStructure()
b.adjust()
b.restore()
let bDescription = b.simpleDescription

//You can use a protocol name like any other named type. Methods outside of the protocol definition will no be available.
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// uncomment to see error
// protocolValue(protocolValue.anotherProperty)


