import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var ansArr: [Int] = []
    for i in 0..<arr.count {
        if ansArr.count == k {
            break
        }
        if !ansArr.contains(arr[i]) {
            ansArr.append(arr[i])
        }
    }
    if ansArr.count < k {
        for _ in 0..<k-ansArr.count {
            ansArr.append(-1)
        }
    }
    return ansArr
}