import Foundation

func solution(_ s:String) -> Int {
    let ansArr = s.map{String($0)}
    
    var keepArr: [String] = []
    var firstStr = ""
    
    var answer = 0
    
    for i in 0..<ansArr.count {
        if keepArr.isEmpty {
            firstStr = ansArr[i]
            keepArr.append(firstStr)
        } else {
            keepArr.append(ansArr[i])
            if keepArr.filter{$0 == firstStr}.count == keepArr.filter{$0 != firstStr}.count {
                keepArr.removeAll()
                answer += 1
            }
        }
        if i == ansArr.count - 1 {
            if keepArr.count > 0 {
                answer += 1
            }
        }
    }
    return answer
}