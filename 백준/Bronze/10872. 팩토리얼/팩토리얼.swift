let input = Int(readLine()!)!
var ans = 1

if input != 0 {
    for i in 1...input {
        ans *= i
    }
}
    
print(ans)