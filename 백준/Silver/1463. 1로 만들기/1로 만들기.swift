import Foundation

//MARK: - 바텀 업 1
let input = Int(readLine()!)!
var dp = [Int](repeating: 0, count: input+1)

for i in 2..<input+1 {
    dp[i] = dp[i-1] + 1
    if i%2 == 0 {
        dp[i] = min(dp[i], dp[i/2]+1)
    }
    if i%3 == 0 {
        dp[i] = min(dp[i], dp[i/3]+1)
    }
}
print(dp[input])

//MARK: - 바텀 업 2
//let n = Int(readLine()!)!
//let INF = 1_234_456_789
//var cache = [Int](repeating: INF, count: n + 1)
//cache[1] = 0
//for i in 1...n {
//    if i % 3 == 0 {
//        cache[i] = min(cache[i], cache[i / 3] + 1)
//    }
//    if i % 2 == 0 {
//        cache[i] = min(cache[i], cache[i / 2] + 1)
//    }
//    cache[i] = min(cache[i], cache[i - 1] + 1)
//}
//
//print(cache[n])

//MARK: - 탑 다운
//let n = Int(readLine()!)!
//let INF = 1_234_456_789
//var cache = [Int](repeating: INF, count: n + 1)
//
//func f(_ n: Int) -> Int {
//    if n == 1 {
//        return 0
//    }
//    if cache[n] != INF {
//        return cache[n]
//    }
//    if n % 3 == 0 {
//        cache[n] = min(f(n / 3) + 1, cache[n])
//    }
//    if n % 2 == 0 {
//        cache[n] = min(f(n / 2) + 1, cache[n])
//    }
//    cache[n] = min(f(n - 1) + 1, cache[n])
//    return cache[n]
//}
//
//print(f(n))
