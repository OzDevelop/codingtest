import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScore = score.sorted{ $1 < $0}
    var ansArr: [Int] = []
    
    for i in stride(from: m-1, to: sortedScore.count, by: m) {
        ansArr.append(sortedScore[i])
    }
    
    return ansArr.map { $0 * m}.reduce(0, +)
}