import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}

if n == 1 {
    print(nums[0])
    exit(0)
}

var dpL2R = nums
var dpR2L = nums

for i in 1..<n {
    dpL2R[i] = max(dpL2R[i-1] + dpL2R[i], dpL2R[i])
}
for i in stride(from: n - 2, to: -1, by: -1) {
    dpR2L[i] = max(dpR2L[i+1] + dpR2L[i], dpR2L[i])
}

var maxVal = Int.min

for i in 1..<n-1 {
    maxVal = max(maxVal, dpL2R[i-1] + dpR2L[i+1])
}
print(max(maxVal, dpR2L.max()!))

