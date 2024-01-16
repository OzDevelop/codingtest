func solution(_ s:String) -> Bool {
    if s.count != 4 && s.count != 6 {
        return false
    }
    for i in s {
        if 48 > i.asciiValue! || i.asciiValue! > 57 {
            return false
        }
    }
    
    return true
}