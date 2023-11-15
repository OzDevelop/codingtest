import Foundation

func solution(_ my_string:String) -> [String] {
    var ansArr: [String] = []
    let stringArr = my_string.map { String($0)}
    
    for i in 0..<stringArr.count {
        var word = ""
        for j in i..<stringArr.count {
            word += String(stringArr[j])
        }
        ansArr.append(word)
    }
    ansArr = ansArr.sorted()
    return ansArr
}