import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 1, count: 3), count: n+1)

//for i in 0..<3 {
//    dp[1][i] = 1
// 
for i in 2..<n+1 {
        dp[i][0] = (dp[i-1][0] + dp[i-1][1] + dp[i-1][2]) % 9901
        dp[i][1] = (dp[i-1][0] + dp[i-1][2]) % 9901
        dp[i][2] = (dp[i-1][0] + dp[i-1][1]) % 9901
}

print(dp[n].reduce(0, +) % 9901)
