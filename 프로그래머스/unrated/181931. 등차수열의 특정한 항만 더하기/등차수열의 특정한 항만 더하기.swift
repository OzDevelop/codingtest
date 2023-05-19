import Foundation
func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var sumArr = Array(repeating: 0, count: included.count+1)
    var result = 0
    for i in 0..<included.count {
        let tmp = a + i*d
        sumArr[i] = tmp
    }
    for i in 0..<included.count {
        if included[i] == true {
            result += sumArr[i]
        }
    }
    return result
}