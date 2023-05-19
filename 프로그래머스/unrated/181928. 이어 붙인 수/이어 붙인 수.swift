import Foundation

func solution(_ num_list:[Int]) -> Int {
    var (a,b) = ("","")
    for i in num_list {
        if i % 2 == 1 {
            a += String(i)
        } else {
            b += String(i)
        }
    }
    return Int(a)! + Int(b)!
}