import Foundation

let n = Int(readLine()!) ?? 0
var board: [[Character]] = []
for _ in 0..<n {
    board.append(Array(readLine()!))
}

var answer = 0

func changeBoard(_ board: [[Character]], r: Int, c: Int) {
    let dx = [-1, 0, 1, 0] // column
    let dy = [0, 1, 0, -1] // row
    for i in 0..<4 {
        let rr = r + dy[i]
        let cc = c + dx[i]
        if rr >= 0 && rr < n && cc >= 0 && cc < n {
            var changedBoard = board // 놓친 부분 -> 4방향으로 갈때마다 보드를 초기화 해야하는데 그전에 초기화해서 정보가 남아버림..
            changedBoard[rr][cc] = board[r][c]
            changedBoard[r][c] = board[rr][cc]
            answer = max(answer, cntRowMax(changedBoard), cntColumnMax(changedBoard))
        }
    }
}

func cntRowMax(_ board: [[Character]]) -> Int {
    var maxCnt = 0
    for i in 0..<n {
        var rowCnt = 1
        for j in 0..<n-1 {
            if board[i][j] == board[i][j+1] {
                rowCnt += 1
            } else  {
                maxCnt = max(maxCnt, rowCnt)
                rowCnt = 1
            }
        }
        maxCnt = max(maxCnt, rowCnt) // 놓쳤던 부분 - 계속 같은거면 maxCnt가 갱신이 안댐
    }
    return maxCnt
}

func cntColumnMax(_ board: [[Character]]) -> Int {
    var maxCnt = 0
    for i in 0..<n {
        var columnCnt = 1
        for j in 0..<n-1 {
            if board[j][i] == board[j+1][i] {
                columnCnt += 1
            } else {
                maxCnt = max(maxCnt, columnCnt)
                columnCnt = 1
            }
        }
        maxCnt = max(maxCnt, columnCnt) // 놓쳤던 부분 - 계속 같은거면 maxCnt가 갱신이 안댐
    }
    return maxCnt
}

for i in 0..<n {
    for j in 0..<n {
        changeBoard(board, r: i, c: j)
    }
}

print(answer)