import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var basket: [Int] = []
    var board = board
    var tmp = 0
    var result = 0
    
    for i in moves {
        while true {
            if board[tmp][i-1] != 0 {
                basket.append(board[tmp][i-1])
                board[tmp][i-1] = 0
                tmp = 0
                if basket.count >= 2 && basket[basket.count - 1] == basket[basket.count - 2] {
                    basket.removeLast()
                    basket.removeLast()
                    result += 2
                }
                break
            } else if tmp == board.count - 1 {
                tmp = 0
                break
            }
            tmp += 1
        }
    }
    return result
}