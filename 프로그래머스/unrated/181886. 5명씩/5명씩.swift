import Foundation

func solution(_ names:[String]) -> [String] {
    var ans: [String] = []
    for i in 0..<names.count {
        if i % 5 == 0 {
            ans.append(names[i])
        }
    }
    return ans
}