import Foundation

func solution(_ num_list:[Int]) -> Int {
    var ans1 = 0
    var ans2 = 0
    for i in 0..<num_list.count {
        if (i + 1) % 2 == 0 {
            ans1 += num_list[i]
        } else {
            ans2 += num_list[i]
        }
    }
    return ans1 >= ans2 ? ans1 : ans2
}