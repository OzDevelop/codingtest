import Foundation

let nk = readLine()!.split(separator: " ").map{ Int(String($0))!}
let n = nk[0], k = nk[1]

var dp: [[String]] = Array(repeating: [String](), count: 11)

dp[1] = ["1"]
dp[2] = ["11", "2"]
dp[3] = ["111", "12", "21", "3"]

for i in 4..<11 {
    for k in [1, 2, 3] {
        for arr in dp[i-k] {
            dp[i].append(arr+String(k))
        }
    }
}

dp[n].sort()

if dp[n].count >= k {
    var ans = ""
    dp[n][k-1].forEach { ans += String($0) + "+" }
    ans.removeLast()
    print(ans)
} else {
    print(-1)
}