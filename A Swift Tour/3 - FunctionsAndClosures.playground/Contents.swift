/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
        Code by Ana Carolina Barreto
  @thepurpleana || thepurpleana@gmail.com
                JAN - 2019
 */


// MARK: - Functions and Closures

/// - Experiment: Remove the day parameter. Add a parameter to include today's lunch special in the greeting.

func welcome(_ person: String, special: String) -> String {
    return "Hello \(person), today's special is \(special)."
}
welcome("Justin", special: "Garden Salad")

///


/// - Experiment: Rewrite the closure to return zero for all odd numbers.

var numbers = [2, 3, 4, 5, 6, 7, 8, 9, 22]

numbers.map({ (number: Int) -> Int in
    return (number % 2 != 0) ? 0 : number
})

///

//

