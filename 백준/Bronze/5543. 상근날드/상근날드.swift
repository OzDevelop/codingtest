import Foundation

var burger = [Int]()
var drink = [Int]()
for _ in 1...3{
    burger.append(Int(readLine()!)!)
}
for _ in 1...2 {
    drink.append(Int(readLine()!)!)
}

print(burger.min()!+drink.min()!-50)
