import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ans = arr
    for i in queries {
        for j in i[0]...i[1] {
            ans[j] += 1
        }
        
    }
    return ans
}