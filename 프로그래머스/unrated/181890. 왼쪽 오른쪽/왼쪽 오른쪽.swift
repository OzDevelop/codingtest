import Foundation

func solution(_ str_list:[String]) -> [String] {
    var resultArr: [String] = []
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            resultArr = Array(str_list[0..<i])
            break
        } else if str_list[i] == "r" {
            resultArr = Array(str_list[i+1..<str_list.count])
            break
        }
    }
    
    return resultArr
}
