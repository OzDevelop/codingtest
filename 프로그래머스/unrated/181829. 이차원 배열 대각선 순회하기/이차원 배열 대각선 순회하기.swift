import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var ans = 0
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if i + j <= k {
                ans += board[i][j]
            }
        }
    }
    return ans
}