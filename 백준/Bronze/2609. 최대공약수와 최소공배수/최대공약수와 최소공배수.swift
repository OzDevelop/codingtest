import Foundation

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var max = arr.max()!
var min = arr.min()!
var r = max%min

while r > 0 {
    max = min
    min = r
    r = max%min
}

print(min)
print(arr[0]*arr[1]/min)
