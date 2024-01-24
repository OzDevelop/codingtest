import Foundation
func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    var (ansCard1, ansCard2) = (cards1, cards2)

    for i in 0..<goal.count {
        if ansCard1.isEmpty && ansCard2.isEmpty {
            return "No"
        }

        if !ansCard1.isEmpty && ansCard1[0] == goal[i] {
            ansCard1.remove(at: 0)
            print(i)
        } else if !ansCard2.isEmpty && ansCard2[0] == goal[i] {
            ansCard2.remove(at: 0)
            print(i)
        } else {
            return "No"
        }
        print(ansCard1, ansCard2)
    }

    return "Yes"
}