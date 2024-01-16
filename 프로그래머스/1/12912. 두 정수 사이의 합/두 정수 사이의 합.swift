func solution(_ a:Int, _ b:Int) -> Int64 {
    // let ans1 = Int64((a < b ? a...b : b...a).reduce(0, +))
    var ans2 = 0
    
    for i in (a<b ? a...b : b...a) {
        ans2 += i
    }
    
    return Int64(ans2)
}