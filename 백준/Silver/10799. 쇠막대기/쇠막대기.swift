let input = Array(readLine()!)

var laserCnt = 0
var validNum = 0
var ans = 0

for i in 0..<input.count {
    if input[i] == "(" {
        validNum += 1
    } else if input[i] == ")" {
        validNum -= 1
        if input[i-1] == "(" {
            ans += validNum
        } else {
            ans += 1
        }
    }
}
print(ans)