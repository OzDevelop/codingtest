import Foundation

var three = readLine()!.split(separator: " ").map{Int(String($0))!}
three.sort()
print("\(three[0]) \(three[1]) \(three[2])")