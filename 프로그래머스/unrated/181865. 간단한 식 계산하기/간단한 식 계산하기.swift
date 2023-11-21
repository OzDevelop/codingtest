import Foundation

func solution(_ binomial:String) -> Int {
    let arr = binomial.split(separator: " ")
    var ans = 0
    switch arr[1] {
    case "+":
        ans = Int(arr[0])! + Int(arr[2])!
    case "-":
       ans = Int(arr[0])! - Int(arr[2])!
    case "*":
        ans = Int(arr[0])! * Int(arr[2])!
    default:
        break
    }
    return ans
}