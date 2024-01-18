import Foundation

func solution(_ n:Int) -> Int {
    var three = ""
    var tmp = n
    var ans = 0
    
    while tmp != 0 {
        three += String(tmp % 3)
        tmp /= 3
    }
    for (index, char) in three.reversed().enumerated() {
        if let char = Int(String(char)) {
            ans += char * Int(pow(Double(3), Double(index)))
        }
    }
    return ans
}