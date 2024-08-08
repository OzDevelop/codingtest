import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = Int(readLine()!)!
    var dp: [Int] = Array(repeating: 0, count: input + 1)
    
    switch input {
    case 0:
        print(0)
    case 1:
        print(1)
    case 2:
        print(2)
    case 3:
        print(4)
    default:
        dp[0] = 0; dp[1] = 1; dp[2] = 2; dp[3] = 4
        
        for j in 4..<input + 1{
            dp[j] = dp[j-1] + dp[j-2] + dp[j-3]
        }
        print(dp[input])
    }
}