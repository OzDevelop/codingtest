let input = Int(readLine()!)!
var charge = 1000 - input
var cnt = 0
let n : [Int] = [500, 100, 50, 10, 5, 1]

for i in n {
    cnt += charge/i
    charge %= i
    
}
print(cnt)


