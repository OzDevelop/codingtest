import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var ans = 0
    if a % 2 == 1 && b % 2 == 1 {
        ans = a * a + b * b
    } else if a % 2 == 1 || b % 2 == 1 {
        ans = 2 * (a + b)
    } else {
        ans = Int(abs(a - b))
    }
    
    return ans
}