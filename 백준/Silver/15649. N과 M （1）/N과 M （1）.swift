let nm = readLine()!.split(separator: " ").map{ Int(String($0))!}
let (N, M) = (nm[0], nm[1])
var visited = [Bool](repeating: false, count: N+1)

func dfs(nums: [Int]) {
    if nums.count == M {
        nums.forEach{ print($0, terminator: " ") }
        print()
        return
    }
    
    for i in 1...N {
        if !visited[i] {
            visited[i] = true
            dfs(nums: nums + [i])
            visited[i] = false
        }
    }
}

dfs(nums: [])