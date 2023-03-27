import Foundation

var n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    arr.append(num)
}
arr.sort()

for i in 0..<n {
    print(arr[i])
}



