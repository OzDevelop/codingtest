import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var yearningDict: [String: Int] = [:]
    var ansArr: [Int] = []
    
    for i in name.indices {
        yearningDict[name[i]] = yearning[i]
    }
    for i in photo {
        var tmpSum = 0
        for j in i {
            if yearningDict.keys.contains(j) {
                tmpSum += yearningDict[j]!
            }
        }
        ansArr.append(tmpSum)
    }
    return ansArr
}