let n = Int(readLine()!)!
var juices: [Int] = []
// dp는 i번째까지 마신 경우 중 최대값을 저장
var dp: [Int] = Array(repeating: 0, count: n+1)

juices.append(0)
for _ in 1..<n+1 {
    juices.append(Int(readLine()!)!)
}

dp[1] = juices[1]
if n>1 {
    dp[2] = juices[2] + juices[1]
}
if n>2 {
    /// i 번째 포도주를 마시고, i-1 번째 포도주도 마시는 경우
    /// dp[i-3]+juices[i-1]+juices[i]
    /// i 번째 포도주를 마시고, i-1 번째 포도주는 마시지 않는 경우
    /// dp[i-2]+dp[i]
    /// i번째 포도주를 마시지 않는 경우
    /// dp[i-1]
    for i in 3..<n+1 {
        dp[i] = max(dp[i-3]+juices[i-1]+juices[i], dp[i-2]+juices[i], dp[i-1])
    }
}

//print(juices)
print(dp[n])