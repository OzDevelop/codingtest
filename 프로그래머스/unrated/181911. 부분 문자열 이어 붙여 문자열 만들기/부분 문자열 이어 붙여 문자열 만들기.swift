import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var resultArr: [[String]] = []
    var resultString = ""
    
    for i in 0..<my_strings.count {
        resultArr.append( Array(my_strings[i].map{ String($0) }[parts[i][0]...parts[i][1]]))
        
        for j in 0..<resultArr[i].count {
            resultString += resultArr[i][j]
        }
    }
    return resultString
}
