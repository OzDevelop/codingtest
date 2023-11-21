import Foundation

func solution(_ myString:String) -> [Int] {
    var ansArr = myString.split(separator: "x", omittingEmptySubsequences: false)
    var intArr: [Int] = []
    for i in ansArr {
        intArr.append(i.count)
    }
    return intArr
}