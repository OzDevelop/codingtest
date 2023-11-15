import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    
    var resultArr: [String] = []
    for i in intStrs {
        resultArr.append(Array(i.map{ String($0) }[s...s + l - 1]).joined())
        
        
    }
    let a = resultArr.map{ Int(String($0))!}.filter {
        $0 > k
    }
   
    
    return a
}