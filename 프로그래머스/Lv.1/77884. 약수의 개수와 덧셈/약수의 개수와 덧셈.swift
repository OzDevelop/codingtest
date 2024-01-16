import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    
    for i in left...right {
        var cnt = 0
        for j in 1...Int(Double(i).squareRoot()) {
            if j * j == i {
                cnt += 1
            } else if i % j == 0 {
                cnt += 2
            }
        }
        if cnt % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    
    return result
}