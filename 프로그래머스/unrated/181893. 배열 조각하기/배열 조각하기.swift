import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var ans = arr
    
    for i in 0..<query.count {
        let value = query[i]
        ans = (i % 2 == 0) ? Array(ans.prefix(upTo: value + 1)) : Array(ans.suffix(from: value))
    }
    return ans
}