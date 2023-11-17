import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    var ans = Array(stride(from: k, through: n, by: k))
    return ans
}