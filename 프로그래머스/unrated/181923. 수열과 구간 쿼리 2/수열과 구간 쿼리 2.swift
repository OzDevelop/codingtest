import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var resultArr: [Int] = []
    
    for index in 0..<queries.count {
        let startIndex = queries[index][0]
        let endIndex = queries[index][1]
        
        let tmpArr = Array(arr[startIndex...endIndex])
        let minResult = tmpArr.filter { $0 > queries[index][2] }.min() ?? -1
        resultArr.append(minResult)
    }
    return resultArr
}