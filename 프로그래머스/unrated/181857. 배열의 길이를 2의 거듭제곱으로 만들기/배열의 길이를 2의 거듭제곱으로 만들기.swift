import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var ans: [Int] = arr
    var (len, tmp) = (arr.count, 1)
    while tmp < len {
        tmp *= 2
    }
    
    while ans.count < tmp {
        ans.append(0)
    }
    
    return ans
}
