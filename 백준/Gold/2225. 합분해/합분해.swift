let NK = readLine()!.split(separator: " ").map{ Int(String($0))!}

var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: NK[0]+1), count: NK[1]+1)

for k in 1...NK[1] {
    for n in 0...NK[0] {
        if n == 0 {
            dp[k][0] = 1
        } else {
            dp[k][n] = (dp[k-1][n] + dp[k][n-1]) % 1_000_000_000
        }
    }
}

print(dp[NK[1]][NK[0]])