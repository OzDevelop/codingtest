import Foundation
func fibonacci(_ n: Int) -> Int {
    var n = n, a = 0, b = 1
    var temp = a
    while n > 0 {
        a = b
        b = temp+b
        temp = a
        n -= 1
    }
    return a
}

let n = Int(readLine()!)!
print(fibonacci(n))