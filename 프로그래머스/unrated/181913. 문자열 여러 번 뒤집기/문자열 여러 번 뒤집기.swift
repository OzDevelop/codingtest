import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var resultArr = my_string.map { String($0)}
    print(resultArr)
    for i in 0..<queries.count {
        resultArr[queries[i][0]...queries[i][1]].reverse()
    }
    return resultArr.joined()
}