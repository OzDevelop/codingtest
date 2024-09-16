import Foundation

let n = Int(readLine()!)!
// 각 행에 퀸이 놓인 열의 인덱스를 저장하는 배열, board[i]는 i번째 행에 놓인 퀸의 열 위치
var board = Array(repeating: 0, count: n).map{ Int(String($0))!}
// 열에 퀸이 놓였는지 여부
var visited = [Bool](repeating: false, count: n)
var answer = 0

// 유효성 검사
func check(x: Int) -> Bool {
    for i in 0..<x {
        // 열이 같은지 검사
        if board[i] == board[x] {
            return false
        }
        // 대각에 위치하면 false
        if abs(board[i] - board[x]) == abs(i - x) {
            return false
        }
        
    }
    return true
}

// dfs를 사용하여 탐색(x는 행을 의미함)
func dfs(x: Int) {
    if x == n {
        answer += 1
        return
    }
    for i in 0..<n {
        if visited[i] { continue }
        board[x] = i
        if check(x: x) {
            visited[i] = true
            dfs(x: x + 1)
            visited[i] = false
        }
    }
}
dfs(x: 0)

print(answer)
