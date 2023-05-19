import Foundation
func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var result = 0
    let result1 = a*a + b*b + c*c
    var result2 = a*a*a + b*b*b + c*c*c
    if a != b && a != c && b != c {
        return a+b+c
    }else if a == b && b == c {
        result = (a + b + c) * result1 * result2
    }else if a == b || a == c || b == c {
        result = Int(a + b + c) * result1
    }
    return result
}