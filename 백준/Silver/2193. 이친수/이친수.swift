import Foundation

let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: n+1)

if n == 1 {
    print(1)
} else if n == 2 {
    print(1)
} else {
    for i in 3..<n+1 {
        dp[1] = 1
        dp[2] = 1
        dp[i] = dp[i-1] + dp[i-2]
//        print(dp)
    }
    print(dp[n])
}
