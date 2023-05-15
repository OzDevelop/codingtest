import Foundation

let n = Int(readLine()!)!
let nArr = readLine()!.split(separator: " ").map{ Int(String($0))!}
var dp = [Int](Array(repeating: 1, count: n+1))

for i in 1..<nArr.count {
    for j in 0..<i {
        if nArr[i] > nArr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
print(dp.max()!)
