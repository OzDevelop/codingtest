import Foundation

let input = readLine()!
var ans = Array(repeating: 0, count: 26)

for char in input {
    ans[Int(char.asciiValue!) - 97] += 1
}

print(ans.map{String($0)}.joined(separator: " "))