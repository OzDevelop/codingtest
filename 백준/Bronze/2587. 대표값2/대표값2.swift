var input = [Int]()
var avg = 0

for _ in 1...5 {
    input.append(Int(readLine()!)!)
}
input.sort()
for i in 0..<5 {
    avg += input[i]
}
print(avg/5)
print(input[2])
