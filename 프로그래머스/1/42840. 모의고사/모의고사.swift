import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var ansArr: [Int: Int] = [1:0, 2:0, 3:0]
    
    let arr1 = Array(repeating: 1...5, count: answers.count).flatMap { $0 }
    let arr2 = Array(repeating: [2,1,2,3,2,4,2,5], count: answers.count).flatMap { $0 }
    let arr3 = Array(repeating: [3,3,1,1,2,2,4,4,5,5], count: answers.count).flatMap { $0 }
    
    
    for i in 0..<answers.count {

        if arr1[i] == answers[i] { ansArr[1]! += 1 }
        if arr2[i] == answers[i] { ansArr[2]! += 1 }
        if arr3[i] == answers[i] { ansArr[3]! += 1 }
    }

    return ansArr.filter{$0.value == ansArr.values.max()!}.keys.sorted()
}