import Foundation

var n = 2
var answer = 0
let input = Int(readLine()!)!
for _ in 1...input {
    n = n*2-1
    answer = n*n
}
print(answer)
