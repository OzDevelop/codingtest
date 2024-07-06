let n = Int(readLine()!)!
for _ in 0..<n {
    let ps = readLine()!
    var sum = 0
    
    for i in ps {
        if i == "(" {
            sum += 1
        } else if i == ")" {
            sum -= 1
            if sum < 0 {
                break
            }
        }
    }
    print(sum == 0 ? "YES" : "NO")
}
