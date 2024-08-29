// LDS 문제
// 가장 긴 증가하는 부분 수열(LIS)랑 같이 보기
// dp 말고도 이분탐색으로 풀 수 있는데 한번 해보기

let n = Int(readLine()!)!
let nArr = readLine()!.split(separator: " ").map { Int(String($0))!}
var dp = Array(repeating: 1, count: n+1)

for i in 1..<n {
    for j in 0..<i {
        if nArr[i] < nArr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
print(dp.max()!)
