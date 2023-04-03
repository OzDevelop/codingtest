import Foundation

var time = readLine()!.split(separator: " ").map{Int($0)!}
let elapse = Int(readLine()!)!

time[2] += elapse
time[1] += time[2]/60
time[0] += time[1]/60
print("\(time[0]%24) \(time[1]%60) \(time[2]%60)")