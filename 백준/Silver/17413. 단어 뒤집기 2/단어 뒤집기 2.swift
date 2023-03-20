//MARK: -   이거 가져온 거임 내가 함 풀어보기
import Foundation

let a = readLine()!

var tag = ""
var word = ""

for char in a {
    
    if char == "<" {
        
        tag.append(char)
        if !word.isEmpty {
            print(String(word.reversed()),terminator: "")
            word = ""
        }
        
    } else if char == ">" {
        
        tag.append(char)
        print(tag,terminator: "")
        tag = ""
        
    } else {
        
        if tag.first == "<" {
            tag.append(char)

        } else if char == " " {
            print(String(word.reversed()),terminator: " ")
            word = ""

        } else {
            word.append(char)

        }
    }
}

if !word.isEmpty {
    print(String(word.reversed()))
}
