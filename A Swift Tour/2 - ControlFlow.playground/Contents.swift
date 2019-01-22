/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
        Code by Ana Carolina Barreto
  @thepurpleana || thepurpleana@gmail.com
                JAN - 2019
 */


//MARK: - Control Flow

/// - Experiment: Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.

var optionalName : String?

if let name = optionalName {
    print(name)
} else {
    print("Not a valid name.")
}

///


/// - Experiment: Try removing the default case. What error do you get?

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

///


/// - Experiment: Add another variable to keep track of whici kind of number was the largest, as well as what that largest number was.

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

///

//
