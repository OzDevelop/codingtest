import Foundation

let input = Int(readLine()!)!
var dp : [Int] = Array(repeating: 0, count: input+1)

if input == 1 {
    print(1)
} else if input == 2 {
    print(2)
} else {
    dp[1] = 1
    dp[2] = 2

    for i in 3..<input+1 {
        dp[i] = (dp[i-1] + dp[i-2])%10_007
    }
    print(dp[input])

}
