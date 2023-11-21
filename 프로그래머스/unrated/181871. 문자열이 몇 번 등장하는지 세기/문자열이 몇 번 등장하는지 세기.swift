import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var answer = 0

    for i in stride(from: myString.count - 1, through: 0, by: -1) {
        let endIndex = myString.index(myString.startIndex, offsetBy: i + 1)
        let subStr = String(myString[..<endIndex])

        if subStr.hasSuffix(pat) {
            answer += 1
        }
    }

    return answer
}
