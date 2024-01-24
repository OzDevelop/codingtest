import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var honerAns: [Int] = []
    var ans: [Int] = []
    
    for i in 0..<score.count {
        if i >= k {
            if score[i] > honerAns.last ?? score[i] {
                honerAns.append(score[i])
                honerAns.sort { $1 < $0 }
                honerAns.removeLast()
            }
        } else {
            honerAns.append(score[i])
        }
        honerAns.sort{ $1 < $0 }
        ans.append(honerAns.last!)
    }
    
    return ans
}