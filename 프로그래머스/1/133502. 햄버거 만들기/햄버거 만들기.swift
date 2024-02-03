import Foundation
func solution(_ ingredient:[Int]) -> Int {
    var order: [Int] = []
    var answer = 0
    
    for i in ingredient {
        order.append(i)
        
        let n = order.count
        
//        if order.count < 4 { 
//            continue
//        } else if order[n-4..<n] == [1,2,3,1] {
//            order = Array(order[0..<n-4])
//            answer += 1
//        }
        if n >= 4 
            && order[n-4] == 1
            && order[n-3] == 2
            && order[n-2] == 3
            && order[n-1] == 1 {
            order.removeLast(4)
            answer += 1
        }

    }
    return answer
}