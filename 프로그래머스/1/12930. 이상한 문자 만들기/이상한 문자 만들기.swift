func solution(_ s:String) -> String {
    var tmp = s.components(separatedBy: " ")
    
    return tmp.map {
        $0.enumerated().map {
            $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased()
        }.joined()
    }.joined(separator: " ")
}