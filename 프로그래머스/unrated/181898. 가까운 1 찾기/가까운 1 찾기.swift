import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    var ans = 0
 
    for i in idx..<arr.count {
        if arr[i] == 1 {
            ans = i
            break
        } else {
            ans = -1
        }
    }
    return ans
}