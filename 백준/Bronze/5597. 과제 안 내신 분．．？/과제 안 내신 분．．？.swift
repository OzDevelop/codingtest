import Foundation

var nArr: [Int] = []

for i in 1...30 {
    nArr.append(i)
}
//print(nArr)

for _ in 0..<28 {
    let input = Int(readLine() ?? "") ?? 0
    if nArr.contains(input) == true {
        nArr.remove(at: nArr.firstIndex(of:input)!)
    }
}
for i in 0..<nArr.count {
    print(nArr[i])
}