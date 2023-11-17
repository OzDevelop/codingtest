import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let ansArr = Array(my_string)
    let ans = String(ansArr[..<s]) + String(ansArr[s...e].reversed()) + String(ansArr[(e+1)...])
    return ans
}