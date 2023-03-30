import Foundation

let s = readLine()!
var alphabet = [Int](repeating: 0, count: 26)

for i in s {
    alphabet[Int(i.asciiValue!)-97] += 1
}
print(alphabet.map{ "\($0)"}.joined(separator:" "))