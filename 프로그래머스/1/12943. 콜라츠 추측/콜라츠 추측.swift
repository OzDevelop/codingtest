func solution(_ num:Int) -> Int {
    var tmpNum = num
    var ans = 0
    
    while tmpNum > 1 {
        if ans == 500 {
            return -1
        }
        if tmpNum % 2 == 0 {
            tmpNum /= 2
            ans += 1
        } else {
            tmpNum = tmpNum * 3 + 1
            ans += 1
        }
    }
    return ans
}