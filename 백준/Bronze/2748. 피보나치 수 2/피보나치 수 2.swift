import Foundation

let n = Int(readLine()!)!
var pibonacci = [0, 1, 1]

for i in 0...n {
    if i==0 || i == 1 || i == 2{
        continue
    }else{
        pibonacci.append(pibonacci[i-1] + pibonacci[i-2])
    }
}
print(pibonacci[n])
