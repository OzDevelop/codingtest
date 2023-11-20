import Foundation

func solution(_ num_list:[Int]) -> Int {
    var arr = num_list
    var cnt = 0
        for i in 0..<arr.count {
            while arr[i] != 1 {
                if arr[i] % 2 == 0 {
                    arr[i] /= 2
                } else {
                    arr[i] = (arr[i] - 1) / 2
                }
                cnt += 1
            }
        }
    return cnt
}
