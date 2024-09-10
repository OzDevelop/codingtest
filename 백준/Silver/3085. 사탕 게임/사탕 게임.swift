import Foundation


// 이 코드 틀렸음 다시 보기.
let n = Int(readLine()!)!
var board: [[Character]] = []
var answer = 0

for _ in 0..<n {
    board.append(Array(readLine()!))
}

/// 보드의 좌하우상 순으로 돌면서 비교
func changeBoard(_ board: [[Character]], r: Int, c: Int) {
    let dx = [-1, 0, 1, 0] // column
    let dy = [0, 1, 0, -1] // row
    
    for i in 0..<4 { // 4방향 모두 비교해야하므로 4회 반복
        let rr = r + dy[i] // 현재 row 에서 이동
        let cc = c + dx[i] // 현재 column에서 이동
        
        // 보드의 범위를 확인하기 위한 조건문
        if rr >= 0 && rr < n && cc >= 0 && cc < n {
            // 복사본을 생성하여 인접 위치와 교환
            var changedBoard = board
            changedBoard[rr][cc] = board[r][c]
            changedBoard[r][c] = board[rr][cc]
            // 변경된 보드에서의 최대 연속값 검사
            answer = max(answer, countRow(changedBoard), countColumn(changedBoard))
        }
    }
}

/// 행의 최대개수 구하기
func countRow(_ board: [[Character]]) -> Int {
    var result = 0
    
    for i in 0..<n {
        var count = 1
        for j in 0..<n-1 {
            if board[i][j] == board[i][j+1] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        result = max(result, count) // 끝까지 같은 값일 경우 else문을 들어가지 않아 최대값이 기록되지 않을 수 있으므로
    }
    return result
}

/// 열의 최대개수 구하기
func countColumn(_ board: [[Character]]) -> Int {
    var result = 0
    
    for i in 0..<n {
        var count = 1
        for j in 0..<n-1 {
            if board[j][i] == board[j+1][i] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        result = max(result, count)
    }
    return result
}

for i in 0..<n {
    for j in 0..<n {
        changeBoard(board, r: i, c: j)
    }
}

print(answer)
