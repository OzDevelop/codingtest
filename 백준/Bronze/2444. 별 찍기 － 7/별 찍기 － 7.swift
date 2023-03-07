import Foundation

let n = Int(readLine()!)!
var revn = 1
for i in 1 ..< 2*n {
    if i <= n {
        print(String(repeating: " ", count: n-i)+String(repeating: "*", count: 2*i-1))


    } else{
        print(String(repeating: " ", count: revn)+String(repeating: "*", count: 2*(n-revn)-1))
        revn += 1
    }
}