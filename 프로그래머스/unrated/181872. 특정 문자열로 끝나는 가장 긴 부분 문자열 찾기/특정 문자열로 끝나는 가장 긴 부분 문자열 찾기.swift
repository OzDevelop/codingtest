import Foundation

func solution(_ myString: String, _ pat: String) -> String {
    var answer = ""

    for i in stride(from: myString.count - 1, through: 0, by: -1) {
        let endIndex = myString.index(myString.startIndex, offsetBy: i + 1)
        let subStr = String(myString[..<endIndex])
        
        if subStr.hasSuffix(pat) {
            answer = subStr
            break
        }
    }
    return answer
}