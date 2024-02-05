import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var answer: [String] = players
    var playerIndices: [String: Int] = [:]
    
    // dic형 player 인덱스를 준비해서 firstindex, lastindex를 대체함
    for (index, player) in players.enumerated() {
        playerIndices[player] = index
    }
    
    for s in callings {
        // 시간 초과 실패
//            answer.insert(s, at: answer.firstIndex(of: s)!-1)
//            answer.remove(at: answer.lastIndex(of: s)!)
        // -------------
        
        // firstIndex 말고 다른 방법을 써야할 듯. callings의 플레이어가 제일 마지막에 있을 경우 시간초과가 뜨는거 가틈
//        let tmp = answer[answer.firstIndex(of: s)!-1] // poe
//        answer[answer.firstIndex(of: s)!-1] = s
//        answer[answer.lastIndex(of: s)!] = tmp
        
        // 다른 방법 (시간복잡도 개선)
        guard let callingIndex = playerIndices[s] else {
            continue
        }
        
        let tmp = answer[callingIndex - 1]
        answer[callingIndex - 1] = s
        answer[playerIndices[tmp]!+1] = tmp
        
        playerIndices[s] = callingIndex - 1
        playerIndices[tmp] = playerIndices[tmp]! + 1
    }
    return answer
}
