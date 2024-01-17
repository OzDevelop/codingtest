func solution(_ n:Int64) -> Int64 {
    for i in 0...n {
        if i * i == n {
            return (i+1) * (i+1)
            
        }
    }
    return -1
}
