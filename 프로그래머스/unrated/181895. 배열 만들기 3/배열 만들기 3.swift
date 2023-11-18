import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var ans: [Int] = []
    for i in intervals {
        for j in i[0]...i[1] {
            ans.append(arr[j])
        }
    }
    return ans
}