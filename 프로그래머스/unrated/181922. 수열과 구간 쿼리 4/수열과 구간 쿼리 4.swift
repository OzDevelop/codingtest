import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    
    var resultArr: [Int] = arr
    
        for index in 0..<queries.count {
            let startIndex = queries[index][0]
            let endIndex = queries[index][1]
            let k = queries[index][2]
            
            for i in startIndex ... endIndex {
                if i % k == 0 {
                    resultArr[i] += 1
                }
            }
        }
        return resultArr
}