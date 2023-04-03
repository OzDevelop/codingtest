import Foundation

let input = readLine()!.map{String($0)}
var stack = 0
var count = 0

for i in 0..<input.count {
    if input[i] == "(" {
        stack += 1
    } else {
        stack -= 1
        if input[i-1] == "(" {
            count += stack
        } else {
            count += 1
        }
    }
}
print(count)
