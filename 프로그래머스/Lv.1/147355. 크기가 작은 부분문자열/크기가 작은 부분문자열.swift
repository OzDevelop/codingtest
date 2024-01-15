import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    
    let tArr = t.map { $0 }
    
    for i in 0..<tArr.count - p.count + 1 {
        var tmp = ""
        for j in i..<i + p.count {
            tmp += String(tArr[j])
        }
//        print(tmp)
        if Int(tmp)! <= Int(p)! {
            result += 1
        }
    }
    return result
}