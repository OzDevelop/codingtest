import Foundation

let input = Int(readLine()!)!
let inputArr = readLine()!.split(separator: " ").map{ Int(String($0))!}
var dp = Array(repeating: 1, count: input+1)

for i in 1..<input {
    for j in 0..<i {
        if inputArr[i] > inputArr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

var LIS: [Int] = []
var lenght = dp.max()!

for i in (0..<input).reversed() {
    if dp[i] == lenght {
        LIS.append(inputArr[i])
        lenght -= 1
    }
}
print(dp.max()!)
print(LIS.reversed().map{String($0)}.joined(separator: " "))