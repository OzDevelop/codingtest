func solution(_ n:Int) -> String {
    var ans = ""
    for i in 0..<n {
        if i % 2 == 1 {
            ans += "박"
        } else {
            ans += "수"
        }
    }
    return ans
}