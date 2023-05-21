import Foundation

let n = Int(readLine()!)!

var numbers: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))!}
var ans = numbers.max()!
var tmp = 0

if ans < 0 {
    print(ans)
} else {
    for number in numbers {
        tmp += number
        tmp = max(tmp, number)
        
        if ans < tmp {
            ans = tmp
        }
    }
    print(ans)
}
