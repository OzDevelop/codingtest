import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var score = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A":0, "N": 0]
    var ans = ""
    for i in 0..<survey.count {
        switch choices[i] {
        case 1...3:
            score[String(survey[i].first!)]! += 4 - choices[i]
        case 5...7:
            score[String(survey[i].last!)]! += (choices[i] - 4)
        default:
            break
        }
        
    }
    
    score["R"]! >= score["T"]! ? ans.append("R") : ans.append("T")
    score["C"]! >= score["F"]! ? ans.append("C") : ans.append("F")
    score["J"]! >= score["M"]! ? ans.append("J") : ans.append("M")
    score["A"]! >= score["N"]! ? ans.append("A") : ans.append("N")
    return ans
}