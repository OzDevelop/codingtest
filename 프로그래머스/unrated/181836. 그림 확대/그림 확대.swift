import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    let array = picture.map{ $0.map{ String(repeating: String($0), count: k) }.joined(separator: "") }
 
    var result: [String] = []
    for i in array {
        for _ in 1 ... k {
            result.append(i)
        }
    }
    
    return result
}