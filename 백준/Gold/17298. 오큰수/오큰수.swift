let cnt = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

var ans = Array(repeating: -1, count: cnt)
var stack: [Int] = []

for i in 0..<cnt {
    while !stack.isEmpty && input[i] > input[stack.last!] {
        ans[stack.removeLast()] = input[i]
    }
    
    stack.append(i)
}

print(ans.map{ String($0) }.joined(separator: " "))