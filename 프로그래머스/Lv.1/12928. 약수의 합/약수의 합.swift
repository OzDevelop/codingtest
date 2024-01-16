func solution(_ n:Int) -> Int {
    var answer: [Int] = []
        if n == 0 {
        return 0
    }
    for i in 1...n {
        if n % i == 0 {
            answer.append(i)
        }
    }
    print(answer)
    return answer.reduce(0, +)
}