import Foundation

func solution(_ arr:[Int]) -> Int {
    var ans = arr
    var lastAns = [0]
    var cnt = 0
    
    while true {
        lastAns = ans
        for i in 0..<arr.count {
            if ans[i] >= 50 && ans[i] % 2 == 0 {
                ans[i] /= 2
            } else if ans[i] < 50 && ans[i] % 2 == 1 {
                ans[i] = (ans[i] * 2) + 1
            }
            
        }
        if ans == lastAns {
            break
        }
        cnt += 1
    }
    
    return cnt
}