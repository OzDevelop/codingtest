import Foundation

var year = 1
let esm = readLine()!.split(separator: " ").map{ Int(String($0))!}
let (e, s, m) = (esm[0], esm[1], esm[2])

while true {
    if (year-e) % 15 == 0 && (year-s) % 28 == 0 && (year-m) % 19 == 0 {
        break
    }
    year += 1
    
}
print(year)