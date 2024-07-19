let input = readLine()!
var ans = ""

for i in input {
    let asciiChar = i.asciiValue!
    let overChar = String(UnicodeScalar(asciiChar - 13))
    let underChar = String(UnicodeScalar(asciiChar + 13))
    
    if i.isLowercase {
        if asciiChar + 13 > 122 {
            ans.append(overChar)
            continue
        }
        ans.append(underChar)
        
    } else if i.isUppercase {
        if asciiChar + 13 > 90 {
            ans.append(overChar)
            continue
        }
        ans.append(underChar)
    } else {
        ans.append(i)
    }
}

print(ans)
