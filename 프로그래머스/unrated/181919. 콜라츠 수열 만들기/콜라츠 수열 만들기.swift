import Foundation

func solution(_ n:Int) -> [Int] {
    var resultArr: [Int] = [n]
    
    while true {
        if n > 1000 {
            break
        } else if resultArr.last! == 1 {
            break
        } else  {
            if resultArr.last! % 2 == 0 {
                resultArr.append(resultArr.last! / 2)
            } else  {
                resultArr.append(3 * resultArr.last! + 1)
            }
        }
    }
    return resultArr
}
