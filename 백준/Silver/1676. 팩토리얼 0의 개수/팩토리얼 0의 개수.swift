var input = Int(readLine()!)!
var ans = 0
while(input != 0) {
    if (input % 125 == 0) {
        ans += 3
    } else if (input % 25 == 0) {
        ans += 2
    } else if (input % 5 == 0) {
        ans += 1
    }
    input -= 1
}
print(ans)