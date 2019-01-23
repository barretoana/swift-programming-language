/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
 Code by Ana Carolina Barreto
 @thepurpleana || thepurpleana@gmail.com
 JAN - 2019
 */


//MARK: - Enumerations and Structures

/// - Experiment: Write a function that compares two Rank values by comparing their raw values.

enum Rank: Int {
    
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
}

func compares(_ first: Rank, _ second: Rank) -> Bool {
    
    return first.rawValue == second.rawValue
    
}

compares(Rank.ace, Rank.ace)
compares(Rank.ace, Rank.eight)

///


/// - Experiment: Add a color() method to Suit that returns "black" for spades and clubs, and returns "red" for hearts and diamonds.

enum Suit: Int {
    
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .diamonds, .hearts:
            return "red"
        }
    }
    
}

///


/// - Experiment: "Write a function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.

struct Card {
    
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
}

func generateFullDeck() -> [Card] {
    
    var fullDeck: [Card] = []
    
    for i in 0..<4 {
        for j in 1...13 {
            fullDeck.append(generateCard(rank: j, suit: i))
        }
    }
    
    return fullDeck
    
}

func generateCard(rank: Int, suit: Int) -> Card {
    
    return Card.init(rank: Rank(rawValue: rank)!, suit: Suit(rawValue:suit)!)
    
}

generateFullDeck()

///

//
