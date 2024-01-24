import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var sumArr: [Int] = []
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            sumArr.append(numbers[i] + numbers[j])
        }
    }
    return Array(Set(sumArr)).sorted()
}