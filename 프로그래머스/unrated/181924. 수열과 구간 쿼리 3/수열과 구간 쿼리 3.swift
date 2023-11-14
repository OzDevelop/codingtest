import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var resultArr = arr
    var tmp = 0
    
    for index in 0..<queries.count {
        tmp = resultArr[queries[index][0]]
        resultArr[queries[index][0]] = resultArr[queries[index][1]]
        resultArr[queries[index][1]] = tmp
    }
    
    return resultArr
}
