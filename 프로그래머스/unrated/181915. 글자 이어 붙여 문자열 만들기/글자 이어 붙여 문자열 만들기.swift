import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var resultArr: [String] = []
    let stringArr = my_string.map{ String($0)}
    
    for i in index_list {
        resultArr.append(stringArr[i])
    
    }
    return resultArr.joined()
}