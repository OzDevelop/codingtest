import Foundation

// dp[n-3]+dp[n-2]+dp[n-1]

let n = Int(readLine()!)!
var dp :[Int] = Array(repeating: 0, count: 1000001)
var cnt = 4
dp[1] = 1
dp[2] = 2
dp[3] = 4
dp[4] = 7
for _ in 1...n {
    let input = Int(readLine()!)!
    if input > cnt {
        for i in cnt+1...input{
            dp[i]=((dp[i-3]+dp[i-2]+dp[i-1])%1000000009)
        }
        cnt = input
    }
//    print(cnt)
    print(dp[input])
}