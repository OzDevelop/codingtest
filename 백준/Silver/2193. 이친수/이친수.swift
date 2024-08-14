import Foundation

let input = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: input+1)
var ans = 0

if input == 1 {
    print(1)
} else if input == 2 {
    print(1)
} else {
    dp[1][1] = 1
    dp[2][0] = 1
    for i in 3..<input+1 {
        dp[i][0] = dp[i-1][0] + dp[i-1][1]
        dp[i][1] = dp[i-1][0]
        
    }
    ans = dp[input][0...1].reduce(0) {
        $0+$1
    }
    print(ans)
}