import Foundation

let n = Int(readLine()!)!
let nArr = Array(readLine()!).split(separator: " ").map { Int(String($0))! }
let v = Int(readLine()!)!

var cnt = 0

for i in 0..<n {
    if v == nArr[i] {
        cnt += 1
    }
}
print(cnt)