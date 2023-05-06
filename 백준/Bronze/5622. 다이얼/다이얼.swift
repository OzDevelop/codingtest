let input = Array(readLine()!)
let dial = ["ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
var time = 0
for i in dial {
    for j in i {
        for k in input {
            if k == j {
                time += dial.index(of: i)! + 3
            }
        }
    }
}
print(time)
