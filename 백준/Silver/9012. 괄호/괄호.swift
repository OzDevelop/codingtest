import Foundation

let testCase = Int(readLine()!)!

for _ in 0..<testCase {

    let line = readLine()!
    var count = 0


    for char in line {
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
            if count < 0 {
                break
            }
        }
    }

    print(count == 0 ? "YES" : "NO")
}