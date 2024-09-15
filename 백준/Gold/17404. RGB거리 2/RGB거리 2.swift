import Foundation

// 입력
let n = Int(readLine()!)!
let max = 1_000_000 // 최소값을 구하기 위한 무작위 큰 값
var ans = max

var colorSet = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
// colorSet 설정
for i in 1..<n+1 {
    colorSet[i] = readLine()!.split(separator: " ").map{ Int(String($0))!}
}

// 첫번째 집이 어떤 색인지 설정
// 첫번째 집과 마지막 집의 색이 같으면 안되므로
for i in 0..<3 {
    // dp[i][j]: i번째 집을 j색으로 칠할 경우의 최소 비용
    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
    
    // 첫번째 집 이외에는 최대값을 넣음.
    for j in 0..<3 {
        if i == j {
            dp[1][j] = colorSet[1][j]
        } else {
            dp[1][j] = max
        }
    }
    
    for j in 2..<n+1 {
        dp[j][0] = min(dp[j-1][1], dp[j-1][2]) + colorSet[j][0]
        dp[j][1] = min(dp[j-1][0], dp[j-1][2]) + colorSet[j][1]
        dp[j][2] = min(dp[j-1][0], dp[j-1][1]) + colorSet[j][2]
    }
    
    // 첫번째 집과 마지막 집의 색이 다를 경우 최소 값 갱신
    for k in 0..<3 {
        if i != k {
            ans = min(ans, dp[n][k])
        }
    }
//    print(dp)
//    print(ans)
}
print(ans)