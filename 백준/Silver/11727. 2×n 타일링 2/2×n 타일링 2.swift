import Foundation

let n = Int(readLine()!)!

var dp : [Int] = Array(repeating: 0, count: n+1)

if n == 1 {
    print(1)
}
if n == 2 {
    print(3)
}
if n >= 3 {
    dp[0] = 0
    dp[1] = 1
    dp[2] = 3
    for i in 3..<n+1 {
        dp[i] = (dp[i-1] + 2*dp[i-2]) % 10_007
        
    }
    print(dp[n])
}