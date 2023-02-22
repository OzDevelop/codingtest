import Foundation

let num = readLine()!.split(separator: " ").map{ Int(String($0))!}
var result = 0

for i in 0...2 {
   result += num[i]
}
print(result)
