import Foundation
let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
var ans: [Int] = []

var isPrimeNumber = [Bool](repeating: true, count: input[1] + 1)
isPrimeNumber[1] = false

for i in 2..<Int(sqrt(Double(input[1])) + 1) {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= input[1] {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

for i in input[0]...input[1] {
    if isPrimeNumber[i] {
        print(i)
    }
}
