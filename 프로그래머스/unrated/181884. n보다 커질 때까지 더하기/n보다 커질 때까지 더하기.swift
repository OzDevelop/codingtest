import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var ans = 0
    numbers.indices.forEach { i in
        if ans <= n {
            ans += numbers[i]
        }
    }
    return ans
}