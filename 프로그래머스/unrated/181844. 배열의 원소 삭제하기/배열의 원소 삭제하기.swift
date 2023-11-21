import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var ans: [Int] = []
    for i in arr {
        if !delete_list.contains(i) {
            ans.append(i)
        }
    }
    return ans
}
