import Foundation

let n = Int(readLine()!)!

var stack: [Int] = []
var ans: [String] = []
var now: Int = 1

for _ in 1...n {
    let num = Int(readLine()!)!
    
    while now <= num {
        stack.append(now)
        ans.append("+")
        now += 1
    }
    
    if stack.last == num {
        stack.removeLast()
        ans.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(ans.joined(separator: "\n"))