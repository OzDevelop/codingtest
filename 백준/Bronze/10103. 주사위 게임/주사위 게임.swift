import Foundation

var (a, b) = (100, 100)
let n = Int(readLine()!)!

for _ in 0..<n {
    var point = readLine()!.split(separator: " ").map { Int(String($0))!}
    if point[0] > point[1] {
        b -= point[0]
    } else if point[0] < point[1] {
        a -= point[1]
    }
}
print(a)
print(b)