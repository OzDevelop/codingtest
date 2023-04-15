import Foundation

let input = readLine()!.split(separator:" ").map { Int(String($0))!}
let num1 = String(input[0]) + String(input[1])
let num2 = String(input[2]) + String(input[3])
print(Int(num1)! + Int(num2)!)

