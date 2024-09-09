import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
var colorSet = Array(repeating: Array(repeating: 0, count: 3), count: n+1)

for i in 1..<n+1 {
    colorSet[i] = readLine()!.split(separator: " ").map{ Int(String($0))!}
}

for i in 1..<n+1 {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + colorSet[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + colorSet[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + colorSet[i][2]
}
print(dp[n].min()!)
