import Foundation

let v = Int(readLine()!)!
var ab = Array(readLine()!)
var (cntA, cntB) = (0, 0)

for i in 0..<v {
    if ab[i] == "A" {
        cntA += 1
    } else {
        cntB += 1
    }
}
if cntA > cntB {
    print("A")
} else if cntA < cntB {
    print("B")
} else { print("Tie")}