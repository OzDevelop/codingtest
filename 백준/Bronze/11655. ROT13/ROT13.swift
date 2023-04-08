import Foundation

let word = Array(readLine()!)
var wordRot = ""

for i in word {
    var tmp = i.asciiValue!
    if tmp >= 65 && tmp <= 90{
        tmp += 13
        if tmp > 90 {
            tmp -= 26
        }
    } else if tmp >= 97 && tmp <= 122  {
        tmp += 13
        if tmp > 122 {
            tmp -= 26
        }
    }
    wordRot += String(UnicodeScalar(tmp))
    
}
print(wordRot)