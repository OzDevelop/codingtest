import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var ans: [Int] = []
    
    for i in 0..<flag.count {
        if flag[i] == true {
            ans += Array(repeating: arr[i], count: arr[i]*2)
        } else {
            ans.removeLast(arr[i])
        }
    }
    return ans
}