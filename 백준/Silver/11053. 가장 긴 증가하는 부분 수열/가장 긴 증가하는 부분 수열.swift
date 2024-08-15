import Foundation

let input = Int(readLine()!)!
let inputArr = readLine()!.split(separator: " ").map {
    Int(String($0))! }
var dp = Array(repeating: 1, count: input+1)

for i in 1..<inputArr.count {
    for j in 0..<i {
        if inputArr[i] > inputArr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
print(dp.max()!)
