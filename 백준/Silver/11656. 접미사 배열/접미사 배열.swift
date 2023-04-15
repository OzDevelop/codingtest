//import Foundation

var input = readLine()!.map{String($0)}
//var input = Array(readLine()!)
var suffix = [String]()

for _ in 0..<input.count {
    suffix.append(input.joined())
    input.remove(at: 0)
}
suffix.sort()

for i in suffix {
    print(i)
}
