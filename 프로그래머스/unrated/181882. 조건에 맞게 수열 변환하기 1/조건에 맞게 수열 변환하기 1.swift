import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var ansArr: [Int] = arr
    
    ansArr.indices.forEach {
        if ansArr[$0] >= 50 && ansArr[$0] % 2 == 0 {
            ansArr[$0] /= 2
        } else if ansArr[$0] < 50 && ansArr[$0] % 2 == 1 {
            ansArr[$0] *= 2
        }
    }
    return ansArr
}