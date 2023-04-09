import Foundation
//var cnt1 = 0
//var cnt2 = -1
//
//func fib1(_ n : Int) -> Int {
//    if n==1 || n==2 {
//        cnt1+=1
//        return 1
//    } else {
////        cnt+=1
//        return fib1(n-1) + fib1(n-2)
//    }
//
//}
//
//func fib2(_ n : Int) -> Int{
//    var cache: [Int] = [0,1]
//    for i in 2...n {
//        cache.append(cache[i-1]+cache[i-2])
//        cnt2 += 1
//    }
//    return cache[n]
//}
//
//let n = Int(readLine()!)!
//fib1(n)
//fib2(n)
//print("\(cnt1) \(cnt2)")

// 다른 사람이 한거
var cache = [0, 1]
for i in 2...40 {
    cache.append(cache[i - 2] + cache[i - 1])
}

let n = Int(readLine()!)!

print(cache[n], n - 2)
