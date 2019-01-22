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
        default:
            return "red"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit

    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

func generateFullDeck() -> [Card] {
    //Write a function that returns an array containing a full deck of cads, with one card of each combination of rank and suit.
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

generateCard(rank: 4, suit: 1).simpleDescription()

generateFullDeck()

