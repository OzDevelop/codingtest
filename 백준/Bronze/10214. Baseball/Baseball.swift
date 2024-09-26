let T = Int(readLine()!)!

for _ in 0..<T {
    var (y, k) = (0, 0)
    for _ in 0..<9 {
        let YK = readLine()!.split(separator: " ").map{ Int(String($0))!}
        y += YK[0]
        k += YK[1]
    }
    if y > k {
        print("Yonsei")
    } else if y < k {
        print("Korea")
    } else {
        print("Draw")
    }
}