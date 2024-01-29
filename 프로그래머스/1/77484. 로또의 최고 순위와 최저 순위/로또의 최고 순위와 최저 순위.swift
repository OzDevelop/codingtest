import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var ansCnt = 0
    
    let dic = [6 : 1, 5 : 2, 4 : 3, 3 : 4, 2 : 5, 1 : 6, 0 : 6]
    
    for i in 0..<6 {
        if lottos.contains(win_nums[i]) {
            ansCnt += 1
        }
    }
    let eraseLotto = lottos.filter{ $0 == 0 }.count
    
    return [dic[ansCnt + eraseLotto]!, dic[ansCnt]!]
}