func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted { lhs, rhs in
        let lhsChar = Array(lhs)[n]
        let rhsChar = Array(rhs)[n]

        if lhsChar == rhsChar {
            return lhs < rhs
        } else {
            return lhsChar < rhsChar
        }
    }
}