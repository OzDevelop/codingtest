import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var (ansA, ansB, ansN) = (a, b, n)
    var ans = 0
    
    while ansN >= ansA {
        ans += (ansN / ansA) * ansB
        ansN = (ansN % ansA) + (ansN / ansA) * ansB
    }
    
    return ans
}