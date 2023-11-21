import Foundation

func solution(_ strArr:[String]) -> Int {
//  방법 1. (안됨)
//    let ansArr = strArr.reduce(into: [Int](repeating: 0, count: 30)) { counts, str in
//        counts[str.count] += 1
//    }
//    return ansArr.max() ?? 0
//  방법 2. (안됨)
//    var ansArr: [Int] = Array(repeating: 0, count: 30)
//    
//    for i in 0..<strArr.count {
//        ansArr[strArr[i].count] += 1
//    }
//    return ansArr.max() ?? 0
//    방법 3.
    var counts: [Int: Int] = [:]
    
    for str in strArr {
        let length = str.count
        counts[length, default: 0] += 1
    }
    
    return counts.values.max() ?? 0
}