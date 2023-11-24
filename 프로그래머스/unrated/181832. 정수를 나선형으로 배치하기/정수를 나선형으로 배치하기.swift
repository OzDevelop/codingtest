import Foundation

func solution(_ n:Int) -> [[Int]] {
    var ans = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]
    
    var x = 0, y = 0, direction = 0
    
    for i in 1...n*n {
        ans[x][y] = i
        let nx = x + dx[direction]
        let ny = y + dy[direction]
        
        if nx < 0 || ny < 0 || nx >= n || ny >= n || ans[nx][ny] != 0 {
            direction = (direction + 1) % 4
            x += dx[direction]
            y += dy[direction]
        } else {
            x = nx
            y = ny
        }
        // print("i -> \(i)")
        // print(direction)
        // print(ans)
        // print(x, y)
    }
    
    return ans
}
