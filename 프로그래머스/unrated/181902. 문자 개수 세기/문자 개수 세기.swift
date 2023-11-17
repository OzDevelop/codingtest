import Foundation

func solution(_ my_string:String) -> [Int] {
    var ansArr = Array(repeating: 0, count: 52)
    
    my_string.map {
        Int($0.asciiValue!)
    }.map {
        if $0 >= 65 && $0 <= 90 {
            ansArr[$0 - 65] += 1
        } else if $0 >= 97 && $0 <= 122 {
            ansArr[$0 - 97 + 26] += 1
        }
    }
    return ansArr
}