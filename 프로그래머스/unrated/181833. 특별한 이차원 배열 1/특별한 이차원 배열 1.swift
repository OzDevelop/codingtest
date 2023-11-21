import Foundation

func solution(_ n:Int) -> [[Int]] {
    var ans: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if i == j {
                ans[i][j] = 1
            }
        }
    }
    return ans
}