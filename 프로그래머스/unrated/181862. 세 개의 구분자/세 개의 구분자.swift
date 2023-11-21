import Foundation

func solution(_ myStr:String) -> [String] {
    var ans = myStr.map { String($0) }
    ans = ans.map {
        if $0 == "a" || $0 == "b" || $0 == "c" {
            return " "
        }
        else {
            return $0
        }
    }
    return ans.joined().split(separator: " ").map { String($0) }
}