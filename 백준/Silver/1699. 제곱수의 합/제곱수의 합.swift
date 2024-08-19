import Foundation

let input = Int(readLine()!)!
var dp = Array(repeating: 0, count: input+1)

for i in 1..<input+1 {
    dp[i] = i
    for j in 1..<i {
        if j*j > i {
            break
        }
        dp[i] = min(dp[i], dp[i-j*j]+1)
    }
}
print(dp[input])