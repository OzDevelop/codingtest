import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var wallArr: [Bool] = Array(repeating: true, count: n)
    var ans = 0
    
    section.indices.forEach{
        if wallArr[section[$0] - 1] == true {
            wallArr[section[$0] - 1] = false
        }
    }
    while !wallArr.reduce(true, { $0 && $1 }) {
        wallArr.indices.forEach { i in
            if wallArr[i] == false {
                for i in i..<min(i + m, wallArr.count) {
                    wallArr[i] = true
                }
                ans += 1
            }
        }
    }
    return ans
}
