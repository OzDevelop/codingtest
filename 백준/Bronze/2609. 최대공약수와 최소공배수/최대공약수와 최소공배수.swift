let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

func gcd(a: Int, b: Int )  -> Int { // a > b
    var (a, b) = (a, b)
    
    while b != 0 {
        let r = b
        b = a % b
        a = r
    }
    return a
}

func lcm(a: Int, b: Int) -> Int {
    return (a * b) / gcd(a: a, b: b)
}

print(gcd(a: input[0], b: input[1]))
print(lcm(a: input[0], b: input[1]))
