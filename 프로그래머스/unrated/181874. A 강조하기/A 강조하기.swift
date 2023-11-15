import Foundation

func solution(_ myString:String) -> String {
    let ans = myString.map{
        if $0 == "a" {
            return String($0).uppercased()
        } else if $0 == "A" {
            return "A"
        } else {
            return String($0).lowercased()
        }
    }.joined()
     
    return ans
}
