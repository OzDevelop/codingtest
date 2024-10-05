let n = Int(readLine()!)! // 삼각형의 크기
var nTri: [[Int]] = Array(repeating: Array(), count: n+1) // 정수 삼각형
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n+1)

// 정수 삼각형 값 초기화
for i in 1...n {
    let tmp = readLine()!.split(separator: " ").map{ Int(String($0))!}
    nTri[i] = tmp
}

dp[1][0] = nTri[1][0]

if n == 1 {
    print(dp[1][0])
} else {
    for i in 2...n {
        for j in 0..<nTri[i].count {
            if j == 0 {
                dp[i][j] += dp[i-1][j] + nTri[i][j]
            } else if j == nTri[i].count - 1 {
                dp[i][j] += dp[i-1][j-1] + nTri[i][j]
            } else {
                dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + nTri[i][j]
            }
        }
    }
    print(dp[n].max()!)
}
