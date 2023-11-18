import Foundation

func solution(_ num_list:[Int]) -> Int {
    var ans = 0
    for i in num_list.indices {
        if  num_list[i] < 0 {
            ans = i
            break
        } else {
            ans = -1
        }
    }
    return ans
}