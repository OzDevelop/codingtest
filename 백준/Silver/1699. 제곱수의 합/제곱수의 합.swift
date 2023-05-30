import Foundation

let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 100001)

for i in stride(from: 1, through: n, by: 1) {
    dp[i] = i
    for j in stride(from: 1, through: i, by: 1) {
        if j*j > i {
            break
        }
        dp[i] = min(dp[i], dp[i - j * j] + 1)
    }
}
print(dp[n])
        
