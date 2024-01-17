import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = true
    var cnt = 0
    for i in s.lowercased() {
        if i == "y" { cnt += 1 }
        else if i == "p" { cnt -= 1 }
    }
    
    if cnt != 0 {
        ans = false
    }
    return ans
}