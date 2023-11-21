import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var ansArr = arr
    
    for i in 0..<ansArr.count {
        for _ in 0..<ansArr[i].count {
            if ansArr.count > ansArr[i].count {
                let diff = ansArr.count - ansArr[i].count
                ansArr[i].append(contentsOf: Array(repeating: 0, count: diff))
            } else if ansArr.count < ansArr[i].count {
                let diff = ansArr[i].count - ansArr.count
                ansArr.append(contentsOf: Array(repeating: Array(repeating: 0, count: ansArr[i].count), count: diff))
            }
        }
    }
    return ansArr
}