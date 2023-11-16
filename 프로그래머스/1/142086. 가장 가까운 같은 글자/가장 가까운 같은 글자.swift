import Foundation

func solution(_ s:String) -> [Int] {
    let sArr = s.map{ String($0) }
    var dict: [String: Int] = [:]
    var ans: [Int] = []
    
    for i in 0..<sArr.count {
        if dict[sArr[i]] == nil {
            ans.append(-1)
            } else {
                ans.append(i - dict[sArr[i]]!)
            }
        dict[sArr[i]] = i
    }

    return ans
}