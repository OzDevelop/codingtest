var input = readLine()!
var ans: [String] = []

for _ in 0..<input.count {
    ans.append(input)
    input.removeFirst()
}

ans.sort(by: <)
for i in ans {
    print(i)
}
