import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    
    for i in 0..<numLog.count - 1 {
        if numLog[i+1] - numLog[i] == 1 {
            result += "w"
        } else if numLog[i+1] - numLog[i] == -1 {
            result += "s"
        } else if numLog[i+1] - numLog[i] == 10 {
            result += "d"
        } else {
            result += "a"
        }
    }
    return result
}
