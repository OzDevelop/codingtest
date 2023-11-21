import Foundation

func solution(_ arr:[[Int]]) -> Int {
    var ans: [Int] = []
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if arr[i][j] == arr[j][i] {
                ans.append(1)
            } else {
                ans.append(-1)
            }
        }
    }
    return ans.contains(-1) ? 0 : 1
}
