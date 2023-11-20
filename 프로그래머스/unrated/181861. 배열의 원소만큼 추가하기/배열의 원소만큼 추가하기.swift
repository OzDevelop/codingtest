import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var ans: [Int] = []
    
    for i in 0..<arr.count {
        ans += Array(repeating: arr[i], count: arr[i])
    }
    return ans
}