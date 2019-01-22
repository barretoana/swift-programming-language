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


