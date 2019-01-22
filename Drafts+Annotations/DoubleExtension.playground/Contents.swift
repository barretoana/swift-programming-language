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

