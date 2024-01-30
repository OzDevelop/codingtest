import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xArr = Array(repeating: 0, count: 10)
    var yArr = Array(repeating: 0, count: 10)
    var ansArr = Array(repeating: 0, count: 10)
    
    var ans: [Int] = []
    
    for i in X {
        xArr[Int(String(i))!] += 1
        
    }
    for i in Y {
        yArr[Int(String(i))!] += 1
    }
    
    for i in 0..<10 {
        if xArr[i] >= 1 && yArr[i] >= 1 && xArr[i] != 0 && yArr[i] != 0 {
            for _ in 0..<min(xArr[i], yArr[i]) {
                ansArr[i] += 1
            }
        }
    }
    
    for i in ansArr.enumerated() {
        if i.element != 0 {
            for _ in 0..<i.element {
                ans.append(i.offset)
            }
        }
    }
    if ansArr.filter({ $0 != 0}).isEmpty {
        return "-1"
    }
    if ans.reduce(0, +) == 0 {
        return "0"
    }
    
    return ans.map{String($0)}.sorted(by: >).joined()
}