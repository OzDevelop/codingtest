let sentence = readLine()!

var ans = ""
var tmpStr = ""
var check = true

for char in sentence {
    switch char {
    case "<":
        ans += tmpStr.reversed()
        ans.append(char)
        tmpStr = ""
        check = false
        
    case ">":
        ans.append(char)
        check = true
        
    default:
        if check {
            if char == " " {
                ans += tmpStr.reversed() + " "
                tmpStr = ""
            } else {
                tmpStr.append(char)
            }
        } else {
            ans.append(char)
        }
    }
}
if !tmpStr.isEmpty {
    ans += tmpStr.reversed()
}
print(ans)
