import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

let n = input.first!
let k = input.last!

var arr = [Int](1...n)
var cnt = k
var newArr = [Int]()

while !arr.isEmpty {
    if cnt <= arr.count {
        newArr.append(arr[cnt-1])
        arr.remove(at: cnt-1)
        cnt = cnt + k - 1
    } else {
        cnt -= arr.count
    }

//    print(newArr)
}
print("<\(newArr.map{String($0)}.joined(separator: ", "))>")
