let input = Int(readLine()!)!

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    print(lcm(a: input[0], b: input[1]))

}
func gcd(_ a: Int, _ b: Int )  -> Int { // a > b
    var (a, b) = (a, b)

    while b != 0 {
        let r = b
        b = a % b
        a = r
    }
    return a
}

func lcm(a: Int, b: Int) -> Int {
    return (a * b) / gcd(a, b)
}