import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {

    let sortedArr = d.sorted()
    
    var ans = 0
    var result = 0
    for i in 0..<sortedArr.count {
        result += sortedArr[i]
        if result > budget {
            ans = i
            break
        }
    }
    if result <= budget {
        ans = sortedArr.count
    }
    return ans
}