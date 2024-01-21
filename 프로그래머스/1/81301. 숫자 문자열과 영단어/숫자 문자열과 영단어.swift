import Foundation


func solution(_ s:String) -> Int {
    let number = ["zero" : "0", "one" : "1", "two" : "2", "three" : "3", "four" : "4", "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", "nine" : "9"]
    
    var ans = ""
    var word = ""
    
    for char in s {
        if char >= "0" && char <= "9" {
            ans.append(char)
        } else {
            word.append(char)
            print(word)
            if number[word] != nil {
                ans.append(number[word]!)
                word = ""
            }
            
        }
    }
    return Int(ans)!
}