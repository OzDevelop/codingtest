import Foundation

var n = Int(readLine()!)!
var arr: [String] = []

for i in 0..<n {
    arr.append(String(readLine()!))
    print(arr[i].first!,arr[i].last!,separator: "" )
}