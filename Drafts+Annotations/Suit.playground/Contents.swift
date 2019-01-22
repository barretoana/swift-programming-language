enum Suit {
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

let aceOfSpades = Suit.spades
print(aceOfSpades, aceOfSpades.color(), aceOfSpades.simpleDescription())
