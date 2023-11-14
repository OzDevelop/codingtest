import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var resultArr: [Int] = []
    
    for i in l...r {
        let tmpString = String(i).map({ Int(String($0))! })
        
        if !tmpString.contains(where: { $0 != 0 && $0 != 5 }) {
            resultArr.append(i)
        }
    }
    if resultArr.isEmpty {
        resultArr.append(-1)
    }
    
    return resultArr
}
