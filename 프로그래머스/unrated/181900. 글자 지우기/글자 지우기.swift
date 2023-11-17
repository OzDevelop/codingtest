import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    var ansArr = my_string.map{String($0)}
    
    indices.forEach {
        ansArr[$0] = ""
    }
    return ansArr.joined()
}