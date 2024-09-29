let input = Array(readLine()!)
var ans = 10

//print(input)

for i in 1..<input.count {
    if input[i] == input[i-1] {
        ans += 5
    } else {
        ans += 10
    }
}
print(ans)