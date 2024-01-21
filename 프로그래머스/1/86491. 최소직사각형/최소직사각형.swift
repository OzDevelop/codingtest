import Foundation

func solution(_ sizes:[[Int]]) -> Int {

    var (ansMax, ansMin) = (0, 0)
    
    for i in sizes {
        ansMax = max(ansMax, i.max()!)
        print(i)
        ansMin = max(ansMin, i.min()!)
        print(ansMin)
    }
    
    return ansMax * ansMin
}