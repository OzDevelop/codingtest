import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var ansN = n
    var ans = 0
    
    while ansN >= a {
        ans += (ansN / a) * b
        ansN = (ansN % a) + (ansN / a) * b
    }
    
    return ans
}