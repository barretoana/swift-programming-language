/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
 Code by Ana Carolina Barreto
 @thepurpleana || thepurpleana@gmail.com
 JAN - 2019
 */


//MARK: - Generics

/// - Experiment: Modify the anyCommonElements(_:_:) function to make a funcion that returns an array of the elements that any two sequences have in common.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Iterator.Element]
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    
    var commonElements : [T.Iterator.Element] = []
    
    for lhsItem in lhs {
        
        for rhsItem in rhs {
        
            if lhsItem == rhsItem {
                commonElements.append(lhsItem)
            }
            
        }
        
    }
    return commonElements
}

anyCommonElements([1, 2, 3, 4], [3, 5, 6, 7, 23, 4, 2, 1])

///

//
