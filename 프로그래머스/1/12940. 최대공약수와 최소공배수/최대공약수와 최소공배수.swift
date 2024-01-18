func solution(_ n:Int, _ m:Int) -> [Int] {
    var a = n
    var b = m
    func gcd(a: inout Int, b: inout Int) -> Int {
        var r = 0
        
        while(b != 0) {
                r = a % b
                a = b
                b = r
        }
        
        return a
    }
    
    return [gcd(a: &a, b: &b), (n * m) / gcd(a: &a, b: &b)]
}